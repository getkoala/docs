---
title: "Navattic"
description: "Capture events coming from Navattic interactive demos."
---

## Overview

[Navattic](https://www.navattic.com?ref=koala) is a tool to build interactive demos of your product.

With a small bit of code you can capture key events in Koala as visitors interact with your Navattic demos.

## Setup

1. [Install the Koala snippet](/get-started/quick-start) on the site where you are also embedding a Navattic demo iframe with Embed Events installed.
2. Anywhere _after_ the Koala snippet, within the `<body>` tag of your html add this code snippet:

```html
<!-- On a page with a Navattic demo and Navattic embed events -->
<script>
  var navattic_events = {
    VIEW_STEP: "Step Viewed",
    START_FLOW: "Flow Started",
    COMPLETE_FLOW: "Flow Completed",
    START_CHECKLIST: "Checklist Started",
    OPEN_CHECKLIST: "Checklist Opened",
    CLOSE_CHECKLIST: "Checklist Closed",
    COMPLETE_TASK: "Task Completed",
    CONVERTED: "User Converted",
    NAVIGATE: "User Navigated",
    IDENTIFY_USER: "User Identified",
    ENGAGE: "User Engaged",
  };

  if (navattic && typeof navattic.onEvent === "function") {
    navattic.onEvent(function (event) {
      if (window.ko && event.type) {
        window.ko.track(
          "Navattic " + (navattic_events[event.type] || event.type),
          event
        );
      }
    });
  }
</script>
```

This will send all Navattic events to Koala, prefixed with the name “Navattic” (e.g. “Navattic View Step” or “Navattic Navigated”). You can see the full list of events in their [docs](https://docs.navattic.com/embed-events#HlKP6).

If you only want to capture some of the events you can add a conditional check like this:

```html
<script>
  // only the events you want to capture
  var navattic_events = {
    START_FLOW: "Flow Started",
    COMPLETE_FLOW: "Flow Completed",
    CONVERTED: "User Converted",
    IDENTIFY_USER: "User Identified",
  };

  if (navattic && typeof navattic.onEvent === "function") {
    navattic.onEvent(function (event) {
      if (window.ko && event.type && navattic_events[event.type]) {
        window.ko.track("Navattic " + navattic_events[event.type], event);
      }
    });
  }
</script>
```
