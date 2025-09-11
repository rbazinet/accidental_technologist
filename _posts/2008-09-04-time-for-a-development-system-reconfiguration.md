---
id: 307
title: 'Time for a Development System Reconfiguration'
date: '2008-09-04T08:00:44-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=307'
permalink: /technology/time-for-a-development-system-reconfiguration/
dsq_thread_id:
    - '95926170'
categories:
    - Technology
---

[![WallOfComputers](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/Test_F33A/WallOfComputers_thumb.jpg)](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/Test_F33A/WallOfComputers_2.jpg) The time has come for me to reconfigure my Windows Vista development system after it has been running very well for months. I lately upgraded my motherboard to an [ABit IP35 Pro](http://www.abit.com.tw/page/en/motherboard/motherboard_detail.php?pMODEL_NAME=IP35+Pro&fMTYPE=LGA775) to better support my new [Q9300 quad-core processor](http://www.newegg.com/Product/Product.aspx?Item=N82E16819115043) and upgraded my system memory to a total of 8GB. Since 32-bit Vista can't handle all this memory it was time to install 64-bit Vista and think about a better way to support my personal development and development I do for clients.

The picture here is what my office feels like sometimes with all the various machines I have with client-specific work on them. I want to be able to consolidate into a single big desktop and run everything on the one box.

### Background

In the past few years I have had a desktop development system to work on some personal and open source projects and used the same system for client work. The usual configuration consisted of some version or versions of Visual Studio and all the necessary components, databases and tools needed to support the clients. This works well when you have all of your tools in one location but it breaks down other times when you want to:

- Upgrade your system to new hardware
- Upgrade your development environment for one client but break the development for other client projects.
- Upgrade software components for one client and all client project using the same libraries need to be upgraded as well.
- Or any piece more than one client depends on......

The problem with having so many things interdependent between multiple clients and projects can lead to unintentionally breaking applications and causing much stress. This will only get worse as time goes on and more clients are added. It will be a continued problem as software versions need to be upgraded used by more than a single project.

### The Solution

[![computer](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/Test_F33A/computer_thumb.jpg)](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/Test_F33A/computer_2.jpg)

Simplification! Since I was installing Vista 64 and it cannot be installed as an upgrade I knew I had the chance to really consider how I wanted to configure this system in order to better be able to support many clients in the future as well as allowing for my own personal projects.

I decided a very simple approach; install as little as necessary for client support on the main Vista 64 installation and use [VMWare Workstation](http://www.vmware.com/products/ws/overview.html) Virtual Machines (VM) for clients. The idea will be to have a separate VM for each client which will allow for:

- Choice of operating system needed by the client; Window XP, Windows Vista, Windows Server 2003/2008 or Linux
- Choice of development tools; Visual Studio 2003/2005/2008
- Choice of whichever libraries and versions we typically use; Telerik RADControls, Infragistics, Active Reports, etc
- Choice of databases; Microsoft SQL Server 2005/2008, Oracle, MySQL

I created a pretty plain vanilla installation of each operating system I need to support (Windows XP, Windows Vista, Windows Server 2003) with nothing much on each one except the operating system and service packs into a virtual machine.

I then create a copy of each of the original virtual machines as I need them and install client-specific software on each.

### The Configuration

More specifically, the base operating system consists of Windows Vista 64, has 8G RAM, a 750G and 500G hard drives for virtual machines. VMWare Workstation is installed to run virtual machines. I used to use Virtual PC but it has not grown as much as VMWare and VPC does not have as many features.

I created some pretty generic virtual machines as starter installations for new clients. I have one for Windows XP, Windows Vista and Windows 2003. Each time a client comes aboard I can copy each virtual machine to its own folder and just use it since it is just a file and a that point installations of Visual Studio, tools and a database server can be setup. These are only for development purposes so a small virtual machine works great. Having a 64-bit base operating system with 8G of memory and 4-cores helps too.

[![VMWareClone](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/Test_F33A/VMWareClone_thumb.jpg)](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/Test_F33A/VMWareClone_2.jpg)

Creating a copy, or clone, of the base image of any operating system is pretty easy. It is as simple as selecting the VM and choosing **Clone** from the menu and selecting a name and location for the new VM.

[![VirtualMachineDirs](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/Test_F33A/VirtualMachineDirs_thumb.jpg)](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/Test_F33A/VirtualMachineDirs_2.jpg)

I have a folder on my secondary drive called *Virtual Machines* and it a folder for Clients and another for *Raw VMs*. Clones go in the Clients folder and the base VMs going in the Raw VMs folder to keep everything organized and separate.

The base VMs are only configured for 512MB RAM but I bump them up to 1G just to make sure there is enough memory in each VM which I can easily adjust on each VM as-needed. It is unlikely I will be running more than one VM at any one time so going to 2G on some will be fine and won't effect performance.

### Issues

I ran into an interesting problem along the way with an error when installing Visual Studio 2005 Service Pack 1 on Windows Server 2003:

> Error 1718. File <var>FileName</var> was rejected by digital signature policy.

The solution was pretty straightforward and was [available as a patch](http://support.microsoft.com/kb/925336) from Microsoft:

> FIX: Error message when you try to install a large Windows Installer package or a large Windows Installer patch package in Windows Server 2003 or in Windows XP: "Error 1718. File was rejected by digital signature policy"

### Conclusion

I think this overall setup will work very well and will let me support many clients and VMs. The nice thing is I can take any VM to my Dell laptop and use it there and move it back if necessary.

There has been too many times in the past years that constantly updating my development system(s) with so many different application just makes a real mess before too long and has often times made updating tough with clients on different versions of certain libraries. This configuration should solve that problem as well.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:7c9649a4-3346-4ad2-882a-85991b3594c7" style="padding-right: 0px; display: inline; padding-left: 0px; padding-bottom: 0px; margin: 0px;
padding-top: 0px">Technorati Tags: [VMWare](http://technorati.com/tags/VMWare),[Vista](http://technorati.com/tags/Vista)</div>