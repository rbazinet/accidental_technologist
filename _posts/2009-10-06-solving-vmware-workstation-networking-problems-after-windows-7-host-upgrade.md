---
id: 377
title: 'Solving VMWare Workstation Networking Problems after Windows 7 Host Upgrade'
date: '2009-10-06T11:17:31-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=377'
permalink: /microsoft/solving-vmware-workstation-networking-problems-after-windows-7-host-upgrade/
dsq_thread_id:
    - '95911142'
categories:
    - Microsoft
---

I have been running Windows Vista 64-bit as my main .NET development system for quite some time now and pretty happy with the results. I put each client I have in a VMWare virtual machine (VM) and install the necessary operating system, this keeps things isolated and clean from my Vista host.

I decided to upgrade my Vista host to the Windows 7 RTM, to get some of the niceties I have enjoyed while testing out Windows 7 in a VM. The upgrade went very smooth but only later did I realize there was a problem upon starting a couple of my client VM?s. I was greeted by this error:

[![VMWare-Error](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SolvingVMWareWorkstationProblemsafterWin_965F/VMWare-Error_thumb.png "VMWare-Error")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SolvingVMWareWorkstationProblemsafterWin_965F/VMWare-Error_2.png)

After a bit of searching the web I stumbled upon a blog post by Andreas Heil titled [Broken VMware Workstation Network Adapter](https://blog.aheil.de/2009/08/17/BrokenVMwareWorkstationNetworkAdapter.aspx), which described my problem and the solution almost completely. I won?t repeat his solution here, but it turned out Bridging was not enabled on my VMNet1 adapter. My virtual adapter looked liked this:

[![VMNet1-Config](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SolvingVMWareWorkstationProblemsafterWin_965F/VMNet1-Config_thumb.png "VMNet1-Config")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SolvingVMWareWorkstationProblemsafterWin_965F/VMNet1-Config_2.png)

Checking the box next to VMWare Bridge Protocol fixed the issue of not having network connectivity in all of the effected VM?s.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:06f86734-a230-49b9-b3ad-0932c68c0cf3" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [VMWare Workstation](https://technorati.com/tags/VMWare+Workstation),[Windows 7](https://technorati.com/tags/Windows+7)</div>