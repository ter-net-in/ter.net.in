---
title: "We built Real World Sim"
date: 2026-09-05
description: "A car, a plane, and the real world in your browser. An experiment in turning Google's captured 3D scenery into a place to play."
---

What if you could open a map and just drive into it?

Pick Monaco. Take a car along the harbour. Switch to a plane, bank toward the mountains, and keep going. That was the idea behind **[World Sim](https://world-sim.ter.net.in)**, our browser experiment in making the real world playable.

The first attempt used satellite photographs stretched over elevation data. From above, it looked like a place. At car height, it looked like a photograph stretched over a mountain. Building a city around that would have meant rebuilding the world ourselves.

So we changed the approach. Google’s captured 3D scenery supplies the buildings, terrain, and textured surroundings. We add the vehicles, controls, and camera. Monaco, San Francisco, Brussels, and Lauterbrunnen are starting points; place search and coordinate entry let you choose somewhere else.

Then we added a plane. And discovered that a plane attached to the terrain behaves like a very confused car.

Every hill pushed it upward. The fix was to give the aircraft and camera an altitude above sea level, independent of the ground. Another wobble came from updating the plane every frame while repeatedly restarting a slower camera animation. Updating them together made the follow camera more consistent.

The controls went through the same process. Slow, physically inspired turns were less fun than simply being able to turn where you wanted. Now the jet banks quickly, levels out when you release the controls, and turns more tightly while you hold the airbrake. There is also a completely fictional light-speed button: 100× travel speed, because sometimes you want to skip ahead.

**To fly:** choose a city, select the plane, and use W/S to climb or descend and A/D to turn. Hold Space for tighter turns, press C to change cameras, and B to toggle light-speed travel. Flights start at 1,500 metres above sea level; higher mountains need a climb.

It is still an experiment. Captured scenery can look distorted close to the street, and there are no collisions, traffic, or landing physics. Flying gives the world more room to look like itself.

[Take it for a drive. Or a flight.](https://world-sim.ter.net.in)
