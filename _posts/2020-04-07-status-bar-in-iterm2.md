---
id: 1507
title: 'Status Bar in iTerm2'
date: '2020-04-07T11:39:21-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1507'
permalink: /mac/status-bar-in-iterm2/
categories:
    - Mac
tags:
    - iterm2
---

I’m a big fan of iTerm2. I’ve used it since it’s inception and haven’t looked back. Even after all of this time I still discover features I didn’t know existed, mainly because I wasn’t looking for them. I recently discovered you can have a status bar at the top of the terminal window with various stats and data points. My status bar is simple at the moment; containing system CPU usage, memory usage and disk throughput. ![2020 04 07 09 38 21](/assets/img/2020/04/2020-04-07_09-38-21.png "2020-04-07_09-38-21.png")

## How did you do that?

 Adding the status bar is pretty simple. Go to iTerm2 -&gt; Profiles -&gt; Session: ![2020 04 07 09 33 49](/assets/img/2020/04/2020-04-07_09-33-49.png "2020-04-07_09-33-49.png") Check the box for **Status bar enabled** and then configure the status bar by clicking the **Configure Status Bar** button. There are a bunch of options here so I think it’s worth playing around with how the terminal looks. There is even an option to run a script, which opens up many possibilities. Simply drag-and-drop the component you want to have in your status bar. Select a component you made active and you can customize it by the **Configure Component** button. ![2020 04 07 09 33 21](/assets/img/2020/04/2020-04-07_09-33-21.png "2020-04-07_09-33-21.png") If anyone sets this up and adds calls to scripts, I’d love to hear how you use this feature or how you get creative with other features.