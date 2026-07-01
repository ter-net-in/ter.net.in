---
title: "We built browser image tools"
date: 2026-07-01
description: "Local crop, resize, background removal, and upscaling tools for images that should not need another upload."
---

Images are still too annoying for how often we touch them.

You have one file. You need it cropped. Or resized. Or with the background gone. Or twice as large because someone sent the tiny version and now everyone has to pretend that's fine.

Most tools make that feel bigger than it is. Upload the image. Wait. Download the result. Upload it again to the next tool. Repeat until the filename looks like a geological core sample: `final-final-transparent-upscaled-2.png`.

So we built **[img.ter.net.in](https://img.ter.net.in)**: small local image modules that run in your browser, share results with each other, and stay out of your way.

Drop an image once. Crop it. Resize it. Remove the background. Upscale it with Swin2SR. Each result lands in IndexedDB, ready for the next module without another upload.

Every operation runs client-side in the browser for privacy. Your original image, intermediate outputs, and final results stay on your machine unless you decide to download or share them. There is no server upload step hiding behind the button.

For the AI parts, we use Hugging Face models through **[Transformers.js](https://huggingface.co/docs/transformers.js)**, their project for running machine learning models directly in JavaScript. The model runs inside the browser runtime, on your device, against the image already sitting in local browser storage.

That changes the shape of the workflow. You can remove a background, immediately upscale the transparent result, resize it to a target size, then crop the final composition without sending the file through four different services.

It is not trying to be a design suite. It is a workbench for the small image chores that show up between ideas and shipping them.

Your browser already has the file. Might as well let it do the work.
