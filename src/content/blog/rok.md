---
title: "We built ternetrok"
date: 2026-06-17
description: "Short-lived localhost tunnels for showing the things we build before they become real infrastructure."
---

There is a specific kind of internet magic in running something on your laptop and seeing it appear on a real URL.

We keep needing this. A prototype, a webhook endpoint, a preview build, a half-finished internal tool, a small thing that only has to exist online for ten minutes so someone else can click it.

Not a deployment. Not a pipeline. Not a cloud story. Just a local port, briefly exposed to the outside world because exposing local stuff online is still extremely cool.

So we built **[ternetrok](https://rok.ter.net.in)**: a small HTTP tunnel service for **ter.net.in**. It takes a local HTTP server, gives it a public URL under `*.share.ter.net.in`, and routes traffic back to your machine.

Login with Google, create a CLI token, run `npx ternetrok login`, then share a port from your terminal.

```sh
npx ternetrok login tr_your_token
npx ternetrok share http 3000 -n my-app
```

That's it. Your local app gets a public URL. Your weird prototype gets five minutes in daylight. Your webhook test finally has somewhere to land.

The internet gets one more little tunnel into someone's machine, carefully and on purpose.

Go expose something harmless.
