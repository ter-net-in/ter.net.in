---
title: "We built Loup-Garou"
date: 2026-07-11
description: "An AI-moderated game of Werewolf for a room full of people and their phones — no narrator has to sit out."
---

![A bare tree under a foggy moon](/wolf.jpg)

Every game of Werewolf needs someone to run it. The narrator — the one who knows every secret, calls the night, wakes the wolves, counts the votes, and never actually gets to play. Someone always has to sit out.

So we built **[Loup-Garou](https://wolf.ter.net.in)**: an AI-moderated game of Werewolf for a room full of people and their phones.

Put one screen on the table — a TV, a laptop. Everyone else scans a QR code and joins from their phone. The shared screen runs the game and speaks the story aloud with an OpenAI voice, while each player takes their secret night moves privately on their own device. English or French, 6 to 12 players, all the classic roles — Seer, Witch, Hunter, Cupid, Thief, Captain.

The interesting part: the narrator can't cheat, by design. A deterministic server owns every secret — who is a wolf, who acted, who dies. The AI is only ever handed public facts that already happened, and a filter strips anything that could betray a hidden role before it reaches the model. It cannot tell you who the wolves are, because it was never told.

And if OpenAI goes quiet mid-game, a built-in bilingual fallback keeps narrating so the village never stalls.

The friend who always ran the game finally gets to play too.

Go gather a village.
