---
id: 324
title: 'Installing Ubuntu 8.10 on the Dell Mini'
date: '2008-11-28T21:08:26-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=324'
permalink: /technology/installing-ubuntu-8-10-on-the-dell-mini/
dsq_thread_id:
    - '96001909'
categories:
    - Technology
---

[![ubuntulogo](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/InstallingUbuntu8.10ontheDellMini_9059/ubuntulogo_thumb.png "ubuntulogo")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/InstallingUbuntu8.10ontheDellMini_9059/ubuntulogo_2.png) I ordered a Dell Mini 910 as soon as Dell announced they were ready and [I was impressed with it right away](https://accidentaltechnologist.com/technology/the-dell-mini-arrives-first-impressions/). The one I ordered came with Windows XP because Dell did not offer Ubuntu with much RAM or SSD storage.

After working with this netbook for a month or so I decided I really wanted something a bit more..well, non-Microsoft. I debated about putting Apple OSX on it as some folks have reported as being able to do but there was also problems reported with this as well. So I decided to put the recently released Ubuntu 8.10 on it.

There are a few logistical challenges with putting a new operating system on the Dell Mini, primarily because the Mini does not have a CDROM drive, which makes it a bit of a challenge. I had read about some people using a USB key as an external hard drive, boot off of it and install an operating system. I had never done this, so I was a little lost as how to make this happen.

As usual, Google to the rescue, found this great utility called [UNetbootin](https://unetbootin.sourceforge.net/). The UNetbootin site says:

> UNetbootin allows for the installation of various Linux/BSD distributions to a partition or USB drive, so it's no different from a standard install, only it doesn't need a CD. It can create a dual-boot install, or replace the existing OS entirely.

This sounded like it would fit the need perfectly. I wanted to install Ubuntu 8.10 and the latest version handles it and many others:

> The current version has built-in support for the following distributions, though [installing other distributions](https://unetbootin.sourceforge.net/#other) is also supported:
> 
> - [Ubuntu](https://www.ubuntu.com/) (and official derivatives) 
>     - 6.06 LTS
>     - 6.10
>     - 7.04
>     - 7.10
>     - 8.04 LTS
>     - 8.10
>     - Daily CD Images
> - [Debian](https://www.debian.org/)
>     - Stable/Etch
>     - Testing/Lenny
>     - Unstable/Sid
> - [Linux Mint](https://linuxmint.com/)
>     - 3.1
>     - 4.0
>     - 5-r1
> - [openSUSE](https://www.opensuse.org/)
>     - 10.2
>     - 10.3
>     - 11.0
>     - Factory
> - [Arch Linux](https://www.archlinux.org/)
>     - 2007.08
> - [Damn Small Linux](https://www.damnsmalllinux.org/)
>     - 4.4
> - [SliTaz](https://www.slitaz.org/en/)
>     - Stable
>     - Cooking
> - [Puppy Linux](https://www.puppylinux.org/)
>     - 4.00
> - [FreeBSD](https://www.freebsd.org/)
>     - 6.3
>     - 7.0
> - [NetBSD](https://www.netbsd.org/)
>     - 4.0
>  
> - [Fedora](https://fedoraproject.org/)
>     - 7
>     - 8
>     - 9
>     - Rawhide
> - [PCLinuxOS](https://www.pclinuxos.com/)
>     - 2007
>     - 2008
> - [Gentoo](https://www.gentoo.org/)
>     - 2007.0
>     - 2008.0
> - [Zenwalk](https://www.zenwalk.org/)
>     - 5.2
> - [Slax](https://www.slax.org/)
>     - 6
> - [Dreamlinux](https://www.dreamlinux.com.br/)
>     - 3.2
> - [Elive](https://www.elivecd.org/)
>     - Development
> - [CentOS](https://www.centos.org/)
>     - 4
>     - 5
> - [Mandriva](https://www.mandriva.com/)
>     - 2007.1
>     - 2008.0
>     - 2008.1
> - [FaunOS](https://www.faunos.com/)
>     - 0.5.4
> - [Frugalware Linux](https://frugalware.org/)
>     - Stable
>     - Testing
>     - Current

### Creating bootable USB

Creation of the bootable USB Ubuntu installation really could not be easier. UNetbootin is a standalone utility which when run lets the user select from any support distribution flavor and version. The target USB key is also selected and after pressing OK the distribution is downloaded, unarchived, the USB key formatted and the distribution copied to the USB key and made bootable. All of this is handled for the user.

[![UNetbootin](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/InstallingUbuntu8.10ontheDellMini_9059/UNetbootin_thumb.jpg "UNetbootin")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/InstallingUbuntu8.10ontheDellMini_9059/UNetbootin_2.jpg)

### Installing Ubuntu on the Dell Mini

Well, this is not a tutorial on installing Ubuntu so I won?t get into it actually. I do want to briefly outline the process though.

1. Insert USB Key in Dell Mini USB port
2. Boot Dell Mini and press ?0? on the boot-up screen
3. Ubuntu Live boots and double-clicking on the Install icon on the desktop gets the process started.
4. After the very few and simple prompts are answered the installation runs for a while and when completed you are prompted to reboot. When rebooting the USB key is removed and you now have a nice Ubuntu 8.10 installation.
 
There is many how-tos popping up relating to Ubuntu on the Dell Mini. A couple of tutorials which I think help out quite a bit are:

- [Installing Ubuntu Netbook Remix](https://www.ubuntumini.com/2008/10/installing-ubuntu-netbook-remix.html)
- [Customizing Firefox for Netbooks](https://www.ubuntumini.com/2008/11/customizing-firefox-for-netbooks.html)
- [Configure Synaptics Touchpad Ubuntu 8.10](https://www.ubuntumini.com/2008/11/configure-synaptics-touchpad-ubuntu-810.html)
 
### Conclusion

I could not be happier with this process, UNetbootin worked great and Ubuntu recognized my hardware including the Wi-Fi card. I was up and running in a very short time. I admit I have not tried the built-in webcam but I hear it works just fine and there are some applications to better take advantage of it.

I plan to use the Dell Mini this way for writing and for some development work with Ruby and Rails. This system should have plenty of power for this using SQLite and either Vim or Emacs as my editor. This is still up in the air.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:51298a08-5011-498c-81a5-063c1aabb1f4" style="padding-right: 0px; display: inline; padding-left: 0px; float: none; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [Dell Mini](https://technorati.com/tags/Dell+Mini),[Ubuntu](https://technorati.com/tags/Ubuntu),[UNetbootin](https://technorati.com/tags/UNetbootin),[USB](https://technorati.com/tags/USB)</div>