---
title: "Custom proxy setup"
description: "How to set up a custom proxy."
---

Custom domains allow you to proxy Koala and send all tracking events to Koala using your own domain. This can be useful if you find that some events are getting intercepted by tracking and ad-blockers using Koala's default domain. With a reverse proxy, you'll be able to capture more intent data.

Setting up a proxy means creating a service to redirect requests from a subdomain you choose (like `koala-api.yourdomain.com`) to Koala. We recommend avoiding subdomains that include the words `analytics`, `tracking` or other similar words that are sometimes blocked.

There are a variety of CDNs and reverse proxy options. This guide explains how to set up CloudFront as a proxy for Koala, but you can apply these principles to almost any modern CDN that supports proxies.

You need to set up two key parts, regardless of the CDN provider you use:
- Proxy to the Koala API (`proxy.getkoala.com`)
- Proxy to the Koala CDN (`cdn.getkoala.com`)

## CloudFront setup for the Koala API

### Custom certificates
  
If you plan on using Route 53 certificates on your Cloudflare distributions, go ahead and create the two certificates for your domains of choice, e.g. `kapi.yourdomain.com` and `kcdn.yourdomain.com`.

<Warning>
You must create these certificates in `us-east-1` for them to be usable in CloudFront.
</Warning>

### CloudFront distribution for the Koala API
  
1. Log into the AWS console and navigate to CloudFront
2. Click **Create Distribution**
3. In the Origin section, configure it as follows:
    - **Origin Domain Name**: `proxy.getkoala.com`
    - **Protocol**: `HTTPS Only`
4. In the Default cache behavior section, configure it as follows:
    - **Viewer protocol policy**: `Redirect HTTP to HTTPS`
    - **Allowed HTTP methods**: `GET, HEAD, OPTIONS, PUT, POST, PATCH, DELETE`
5. Under "Cache key and origin requets", select **Legacy cache settings** and:
    - **Cache Policy**: `CachingDisabled`
    - **Origin Request Policy**: `Create a new Origin Request Policy`
6. After clicking "Create policy":
    - Enter a name and description for the policy (something that describes this is for Koala headers)
    - On Origin request settings, select **Include the following headers** and select these headers:
        - Origin
        - Accept
        - CloudFront-Viewer-Address
        - CloudFront-Viewer-Latitude
        - CloudFront-Viewer-Longitude
    - Still on the "Add header" section, click **"Add Custom"** and enter these headers one by one:
        - Sec-WebSocket-Key
        - Sec-WebSocket-Version
        - Sec-WebSocket-Protocol
        - Sec-WebSocket-Extensions
        - User-Agent
    - Under "Query Strings" select **All**
    - Under "Cookies" select **All**
    - Save your changes
7. Back on the "Create distribution" page, refresh the Origin Request Policy dropdown and select the policy you just created.
8. Under "Settings":
    - add an **Alternate Domain Name** (use the domain from the certificate you created earlier)
    - select the certificate as the **Custom SSL certificate**
9. Finalize by clicking **Create distribution**

Copy the distribution domain name for the next step.

### Route 53 CNAME for the Koala API

1. Log into the AWS console and navigate to Route 53
2. Enter a record name (e.g. `koala-api`), this should be the subdomain you want to use for the proxy
3. Select **CNAME** as the record type
4. Enter the distribution domain name you just created in CloudFront as the **Value**
5. Save your record. This might take awhile to take effect, depending on your TTL configuration.
6. Test that all steps have worked by making a curl request to your domain. For example: `https://yoursubdomain.yourdomain.com/web/projects/YOUR_PUBLIC_KEY` should return a JSON response.

<Note>
  If you run into issues, check that the CloudFront distribution has completed deploying and that the DNS is resolving correctly. You may have to flush your local DNS cache: `sudo killall -HUP mDNSResponder` on macOS.
</Note>

## CloudFront setup for the Koala CDN

### CloudFront distribution for the Koala CDN

The CloudFront distribution for the CDN should look very similar to the same steps you took for the Koala API, but using `cdn.getkoala.com` as the origin domain.

1. For the **Alternate domain name (CNAME)** use a subdomain like `koala-cdn` or `kcdn` - something that denotes this one is for the CDN
2. Select the certificate you created earlier for the **Custom SSL certificate**
3. Finalize by clicking **Create distribution**

Copy the distribution domain name for the next step.

### Route 53 CNAME for the Koala CDN

Once your Cloudfront distribution is created, copy its domain name:

Follow the same steps as you did for the Route 53 CNAME for the Koala API, except using the names and distribution domain for the CDN.

You can verify the CDN proxy by navigating to `https://yoursubdomain.yourdomain.com/v1/koala/sdk.js` to get a JavaScript response.

## Koala pixel setup

Now that your CloudFront (or other CDN provider) proxy is set up, you can configure the Koala pixel to use those domains instead.

1. Log into the Koala app and navigate your installation settings page: https://app.getkoala.com/goto/settings/install
2. Copy the snippet from the **Installation** section, but replace `cdn.getkoala.com` with your proxy domain: `your-cdn-subdomain.yourdomain.com`
3. At the top of this script tag, add the following line using the API proxy url (this **must come first**):
    ```js
    window.koalaSettings = { host: 'https://your-api-subdomain.yourdomain.com' }    
    ```

Your final script tag should look something like this:

```html
<script>
    window.koalaSettings = {
        host: 'your-api-subdomain.yourdomain.com'
    }

    !function(t){if(window.ko)return;window.ko=[],["identify","track","removeListeners","open","on","off","qualify","ready"].forEach(function(t){ko[t]=function(){var n=[].slice.call(arguments);return n.unshift(t),ko.push(n),ko}});var n=document.createElement("script");n.async=!0,n.setAttribute("src","https://your-cdn-subdomain.yourdomain.com/v1/YOUR_PUBLIC_KEY/sdk.js"),(document.body || document.head).appendChild(n)}();
</script>
```
