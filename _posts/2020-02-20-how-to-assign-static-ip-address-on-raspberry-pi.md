---
id: 1413
title: 'How to Assign Static IP Address on Raspberry Pi'
date: '2020-02-20T10:00:01-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1413'
permalink: /raspberry-pi/how-to-assign-static-ip-address-on-raspberry-pi/
categories:
    - 'Raspberry Pi'
tags:
    - debian
    - 'raspberry pi'
    - raspbian
---

I have been setting up a [Raspberry Pi 3 Model B](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/) to use as a [Pi-hole server](https://pi-hole.net/) to help block the constant wave of ads my family and I keep seeing on the Internet. One requirement for Pi-hole is the host Raspberry Pi needs to be configured to use a static IP address.

## The Problem

 I've been configuring and administering Linux servers from the command line for years, but the task of setting up a Raspberry Pi to use a static IP address was a lot more complicated than it should have been. I started with the Raspbian GUI, expecting a Network Settings dialog where I could make the necessary changes. No such luck. On to the obligatory Google search to find some instructions on the process. Many people are asking the same question. Surprisingly, there are very few answers, and even less that worked. A total of 0 worked for me on my Raspberry Pi 3 Model B. ## The Solution

 After much trial and error, I discovered a combination that works. I wanted to write this up for a couple of reasons; first, to help others that have better things to do with their time and second, a reference I can go back to when I forget how I solved this problem. It comes down to modifying a couple of files and adding a small bit of configuration. The first file to update is /etc/dhcpcd.conf: ```
sudo nano /etc/dhcpcd.conf```

```
```

 Most of what needs to be added already exists in the file commented out. I left the file as-is and added the changes to the bottom of the file. The first line indicates which interface (network card) I'm configuring, the wired port, if you're on WiFi use wlan0 instead of eth0 for the interface. Lines 2-4 should be pretty clear, set the IP addresses specific to your network. Line 4 indicates I am using [Cloudflare DNS](https://www.cloudflare.com/dns/) servers. Line 5 sets up the static IP address even with no network cable attached. Probably not necessary but I wanted it in there. ```
interface eth0
static ip_address=192.168.1.200/24
static routers=192.168.1.1
static domain_name_servers=1.1.1.1 1.0.0.1
nolink
```

 Don't forget to save your changes, Ctrl-x, then select Y and then press Enter to keep the file name. The second file to update is /etc/network/interfaces: ```
sudo nano /etc/network/interfaces
```

 I added this to the bottom of the file. ```
interface eth0 manual
```

 This line means the interface is configured manually and does not use DHCP. Again, don't forget to save your changes, Ctrl-x, then select Y and then press Enter to keep the file name. Restart the DHCP daemon or reboot. ```
sudo service dhcpcd restart
sudo reboot
```

## Finally

 After much trial and error and the static IP address set, configuring the Pi-hole is easy and works great. I'm currently blocking ads at a feverish pace.