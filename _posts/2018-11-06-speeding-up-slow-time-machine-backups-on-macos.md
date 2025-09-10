---
id: 1229
title: 'Speeding up Slow Time Machine Backups on macOS'
date: '2018-11-06T11:36:36-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1229'
permalink: /mac/speeding-up-slow-time-machine-backups-on-macos/
categories:
    - Mac
tags:
    - macOS
    - Synology
    - 'Time Machine'
---

I've been a long-Time Apple Time Machine for many years and it's saved me many times. I back up to a Synology NAS drive configured with Time Machine support. Time Machine has always been fast and efficient until I upgraded to macOS El Capitan (10.11). During that time, backups could be measure in hours instead of minutes previously. I initially thought the slowdown had to do with a recent software change in my Synology NAS. I spent a bit of time in the Synology forums trying to solve the problem with various suggestions from users. Nothing worked. I upgrade to macOS Sierra (10.12) and High Sierra (10.13) when they came out, hoping something had changed that fixed the agonizingly slow backups. No luck.

## Disabling Throttling

I recently started to try to find a solution again since my backups recently went up in size and the slowness was really noticeable. Estimated backup times measured in days. After a bit of digging I found this suggestion, entered in a Terminal window:

```bash
sudo sysctl debug.lowpri_throttle_enabled=0
```

It worked beautifully. A very large backup went from days to hours. Subsequent backups now take minutes instead of hours. 

**Note**: you can re-enable throttling with a similar command:

```bash
sudo sysctl debug.lowpri_throttle_enabled=1
```

I admit I don't know the side effects of disabling throttling, so use at your own risk.

## Making it Stick

If you want to have throttling turned off between Mac restarts, you have to do a bit more work. Create a file under `/Library/LaunchDaemons/fix-el-capitan-slow-time-machine-speed.plist` with the contents:

```xml
<?xml version="1.0" encoding="UTF-8"?>

<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>fix-el-capitan-slow-time-machine-speed</string>
    <key>ProgramArguments</key>
    <array>
      <string>/usr/sbin/sysctl</string>
      <string>debug.lowpri_throttle_enabled=0</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
  </dict>
</plist>
```

Make it belong to root:

```bash
sudo chown root /Library/LaunchDaemons/fix-el-capitan-slow-time-machine-speed.plist
```

Make it load at startup:

```bash
sudo launchctl load /Library/LaunchDaemons/fix-el-capitan-slow-time-machine-speed.plist
```

## Conclusion

I've also tested on macOS Mojave (10.14.1) and can confirm a nice speedup. Overall, everything works really well now. I can't take [credit for the solution](https://apple.stackexchange.com/questions/212537/time-machine-ridiculously-slow-after-el-capitan-upgrade) as I did some searching and came across several places this was mentioned, [including one from Apple](https://discussions.apple.com/thread/7612681). I just know that it works!