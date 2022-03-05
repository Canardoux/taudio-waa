---
title:  "Milestone #4"
description: "Taudio Streams for Flutter iOS"
summary: "Taudio Streams for Flutter iOS."
permalink: milestone_4.html
tags: [roadmap,milestone]
keywords: roadmap,milestone
---
## 4 - Taudio Streams for Flutter iOS

[Kanban Board](https://github.com/Canardoux/taudio/projects/5)

This milestone is much more complicate that the previous ones.
We will have to implement the W3C API for native iOS.

We do not think that it will be doable to implements the many dozen of the different nodes specified by the W3C.
We will have to limit ourself to the major types of nodes.
We are not musician, and implement an audio-compressor, for example, is probably not doable for us without borrowing the algorythm from elsewhere.

We will document how to code custom nodes, so that musicians will be able to code the nodes types they need, as many flutter plugins.

The implementation of this milestone can be:

- Mostly coded on the Flutter side, in dart. The code in Dart will be shared between Flutter iOS and Flutter Android, but will need to be recoded for others Framework like React Native
- Mostly coded on the iOS side, in Objective-C. The code in Objective-C will be shared with other frameworks , but we will have to recode onwith Java the iOS stuff.
- A mix between some development in Dart, and some development in Objective-C.
- Coded with a real portable language like C++ or Rust. *(Not sure that it is doable)*

For this milestone, we will try to find some FOSS already existing on the web that can be used.
For example :

- [flutter_oboe](https://pub.dev/packages/oboe)
- [cpal](https://github.com/RustAudio/cpal)
- [Rust Crates](https://crates.io/crates/web-audio-api/0.14.0)
- The code source of Chromium
- The code source of Firefox
- ...

