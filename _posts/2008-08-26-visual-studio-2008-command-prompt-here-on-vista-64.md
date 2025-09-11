---
id: 303
title: 'Visual Studio 2008 Command Prompt Here on Vista 64'
date: '2008-08-26T10:38:50-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=303'
permalink: /programming/visual-studio-2008-command-prompt-here-on-vista-64/
dsq_thread_id:
    - '95924859'
categories:
    - Programming
---

[![CommandPromptHere](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/VisualStudio2008CommandPromptHereonVista_8C21/CommandPromptHere_thumb_2.jpg)](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/VisualStudio2008CommandPromptHereonVista_8C21/CommandPromptHere_6.jpg) One of the first things I do when setting up a new system is to add the ability to right click on any folder and have a new command prompt with all of the Visual Studio environment variables setup properly. I have used the one referenced by [Scott Hanselman for Visual Studio 2005](http://www.hanselman.com/blog/content/binary/vsnet2005cmdhere.inf) but with Visual Studio 2008 and Vista 64 installed I had to make a few tweaks to the file and making it available.

The new command file looks like this:

```ini
;
; "CMD Prompt Here" PowerToy
;
; Copyright 1996 Microsoft Corporation
;
; Modified to launch VS.NET 2008 command prompt 8/26/2008 RB
[version]
signature="$CHICAGO$"
[VSNet2008CmdHereInstall]
CopyFiles = VSNet2008CmdHere.Files.Inf
AddReg    = VSNet2008CmdHere.Reg
[DefaultInstall]
CopyFiles = VSNet2008CmdHere.Files.Inf
AddReg    = VSNet2008CmdHere.Reg
[DefaultUnInstall]
DelFiles  = VSNet2008CmdHere.Files.Inf
DelReg    = VSNet2008CmdHere.Reg
[SourceDisksNames]
55="VS .NET 2008 CMD Prompt Here","",1
[SourceDisksFiles]
VSNet2008CmdHere.INF=55
[DestinationDirs]
VSNet2008CmdHere.Files.Inf = 17
[VSNet2008CmdHere.Files.Inf]
VSNet2008CmdHere.INF
[VSNet2008CmdHere.Reg]
HKLM,%UDHERE%,DisplayName,,"%VSNet2008CmdHereName%"
HKLM,%UDHERE%,UninstallString,,"rundll32.exe syssetup.dll,SetupInfObjectInstallAction DefaultUninstall 132 %17%\VSNet2008CmdHere.inf"
HKCR,Directory\Shell\VSNet2008CmdHere,,,"%VSNet2008CmdHereAccel%"
HKCR,Directory\Shell\VSNet2008CmdHere\command,,,"%11%\cmd.exe /k cd ""%1"" && ""D:\Program Files (x86)\Microsoft Visual Studio 9.0\Common7\Tools\vsvars32.bat""
HKCR,Drive\Shell\VSNet2008CmdHere,,,"%VSNet2008CmdHereAccel%"
HKCR,Drive\Shell\VSNet2008CmdHere\command,,,"%11%\cmd.exe /k cd ""%1""
[Strings]
VSNet2008CmdHereName="VS.NET 2008 Command Prompt Here PowerToy"
VSNet2008CmdHereAccel="VS.NET &2008 CMD Prompt Here"
UDHERE="Software\Microsoft\Windows\CurrentVersion\Uninstall\VSNet2008CmdHere"
```

The real changes were the new location of Visual Studio, in particular the fact that the location under <font face="Courier New">Program Files</font> is actually <font face="Courier New">Program Files (x86)</font>. It should be noted that my Visual Studio installation is on my D:, not the default of C:. This should be an easy change for anyone using this file.

<div class="wlWriterSmartContent" id="scid:fb3a1972-4489-4e52-abe7-25a00bb07fdf:2cacd0f4-6ad0-4390-a31a-778fe9478eff" style="padding-right: 0px; display: inline; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px">Download the new INF - [vsnet2008cmdhere.inf](https://accidentaltechnologist.com/files/media/file/WindowsLiveWriter/VisualStudio2008CommandPromptHereonVista_8C21/vsnet2008cmdhere_1.inf)

</div>I hope it helps out.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:3f455242-2f73-41df-98ca-dc64f53289ba" style="padding-right: 0px; display: inline; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [Visual Studio 2008](http://technorati.com/tags/Visual%20Studio%202008),[Command Here](http://technorati.com/tags/Command%20Here)</div>