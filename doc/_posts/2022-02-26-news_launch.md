---
title:  "Welcome, &tau;Dio WAA"
published: true
permalink: post_launch.html
summary: "Welcome, &tau;Dio! WAA"
tags: [news]
---


## Overview

_τDio WAA_ is everything about W3C [Web Audio API](https://www.w3.org/TR/webaudio/).
You can look also to the [Mozilla documentation](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API) which is very clear and that it is a pleasure to read it.

_τDio WAA_ will implent this API under various frameworks :

- Flutter
- Blazor
- Microsoft MAUI
- React Native
- ...

## Motivation for τDio WAA

### Flutter Sound is just a draft

Flutter Sound has several API verbs to handle Audio Streams but comes with some limitations:

- It does not support Flutter Web
- It does not support GNU/Linux
- It runs only on Flutter Android and Flutter iOS
- It supports only Raw PCM-INTEGER-16 Little Endian
- It does not support Stereo
- It does not support events with DB level
- The code was _two-headed_ (the code for Audio Streams and for Media-Players/Recorders are completely independant of each others).
- The code is complicate and hard to maintain
- The latency was too important on Android

### Tau Sound was just a dream

During many months, we had the project to implement [Audio Graphs](/guides_graph.html) inside Flutter Sound.
This project was called _TauSound_.

TauSound was killed off a few weeks ago because:

- The API was overly complex and hard to maintain
- It added complexity inside an already complicated library.
- It dawned on us that we wre re-inventing the wheel ; W3C already had functionality in place that we were trying to implement. If you look to the [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API), you will see that we were trying to do something that had already been perfected.

### W3C - Web Audio API

W3C did a fantastic job with the specification of this API.

Furthermore, this API is already completely implemented inside a host of mainstream WEB Browsers:

- Microsoft Edge
- Google Chrome
- Mozilla Firefox
- Apple Safari

It means that we do not have to develop anything new for Web support.

Flutter Sound on Web was really a second-class citizen. Taudio on Web will be first-class citizen:
The problems will not be on Web but on the native side (iOS, Android, GNU/Linux, ...)

W3C specified many great things like :

- [Audio Graphs](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API/Basic_concepts_behind_Web_Audio_API#audio_graphs)
- [Visualisation](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API/Basic_concepts_behind_Web_Audio_API#visualizations)
- [Spatialisation](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API/Basic_concepts_behind_Web_Audio_API#spatialisations)

The recommandation allows anybody to build custom nodes and insert them inside their graphs.
It would be fantastic for our users to be able to code custom nodes in Dart.

## Welcome, τDio WAA
