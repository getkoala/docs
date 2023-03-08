import chalk from "chalk";
import filesize from "filesize";
import find from "find";
import fs from "fs";
import imagemin from "imagemin";
import imageminGifsicle from "imagemin-gifsicle";
import imageminJpegtran from "imagemin-jpegtran";
import imageminOptipng from "imagemin-optipng";
import imageminSvgo from "imagemin-svgo";
import parseFilepath from "parse-filepath";
import sharp from "sharp";

const MAX_IMAGE_SIZE = 1200;

const plugins = [
  imageminGifsicle({}),
  imageminJpegtran({}),
  imageminOptipng({}),
  imageminSvgo({}),
];

let savedSize = 0;

const run = async () => {
  const regex = new RegExp(/\.gif|\.jpeg|\.jpg|\.png$/);
  const files = find.fileSync(regex, "images/");

  await Promise.all(files.map((file) => optimized(file)));

  if (savedSize > 0) {
    console.info(`\n🎉 You saved ${readableSize(savedSize)}.`);
  } else {
    console.info(`\n🎉 Nothing to optimize.`);
  }
};

const size = (filename) => {
  return fs.statSync(filename).size;
};

const readableSize = (size) => {
  return filesize(size, { round: 5 });
};

const resize = async (filename) => {
  const image = await sharp(filename);
  const { width, height } = await image.metadata();
  let resized = false;

  if (width >= MAX_IMAGE_SIZE) {
    resized = true;
    image.resize(MAX_IMAGE_SIZE, null);
  }

  if (height >= MAX_IMAGE_SIZE) {
    resized = true;
    image.resize(null, MAX_IMAGE_SIZE);
  }

  if (resized) {
    const outputFile = await image.toBuffer();
    fs.writeFileSync(filename, outputFile);
  }
};

const optimized = async (filename) => {
  let output = parseFilepath(filename).dir || "./";

  const fileSizeBefore = size(filename);

  if (fileSizeBefore === 0) {
    console.info(
      chalk.blue(`Skipping ${filename}, it has ${readableSize(fileSizeBefore)}`)
    );
    return;
  }

  const pluginsOptions = {
    destination: output,
    plugins,
  };

  const filenameBackup = `${filename}.bak`;
  fs.copyFileSync(filename, filenameBackup);

  if (/\.(jpeg|jpg|png)$/.test(filename)) {
    await resize(filename);
  }

  try {
    await imagemin([filename], pluginsOptions);

    const fileSizeAfter = size(filename);
    const fileSizeDiff = fileSizeBefore - fileSizeAfter;
    if (fileSizeDiff > 0) {
      savedSize += fileSizeDiff;
      console.info(
        chalk.green(
          `Optimized ${filename}: ${chalk.yellow(readableSize(fileSizeAfter))}`
        )
      );
    } else {
      // file after same or bigger
      // restore previous file
      fs.renameSync(filenameBackup, filename);

      console.info(`${filename} ${chalk.red(`already optimized`)}`);
    }
  } catch (err) {
    console.info(chalk.red(`Skip ${filename} due to error when optimizing`));
  }

  // delete backup file
  if (fs.existsSync(filenameBackup)) {
    fs.unlinkSync(filenameBackup);
  }
};

(async () => {
  await run();
})();
