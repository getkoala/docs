---
title: 'Arcade'
description: 'Capture events coming from Arcade interactive tours.'
---

## Overview

[Arcade](https://arcade.software?ref=koala) is a tool to help you create beautiful demos and interactive tours for your product.

With a small bit of code you can capture key events in Koala as visitors interact with your Arcade demos.

## Setup

1. [Install the Koala snippet](/get-started/quick-start) on the site where you are also embedding the Arcade demo iframe.
2. Anywhere *after* the Koala snippet, within the `<body>` tag of your html add this code snippet:

```html
<script>
  window.addEventListener(
    "message",
    function (event) {
      if (event.origin === "https://demo.arcade.software") {
        if (window.ko && event.data && event.data.eventName) {
          window.ko.track('Arcade ' + event.data.eventName, event.data)
        }
      }
    },
    false
  );
</script>
```

This will start capturing all events bubbled from the Arcade tour in Koala, prefixed with the name "Arcade" (e.g. "Arcade CTA Clicked" or "Arcade Hotspot Clicked"). You can see the full list of events in [their docs](https://docs.arcade.software/kb/learn/advanced-features/in-arcade-event-propagation?ref=koala#what-events-are-propagated).

If you only want to capture some of the events you can add a conditional check like this:

```html
<script>
  const eventsToCapture = ['CTA Clicked', 'Hotspot Clicked']

  window.addEventListener(
    "message",
    function (event) {
      if (event.origin === "https://demo.arcade.software") {
        if (window.ko && event.data && event.data.eventName && eventsToCapture.includes(event.data.eventName)) {
          window.ko.track('Arcade ' + event.data.eventName, event.data)
        }
      }
    },
    false
  );
</script>
```
