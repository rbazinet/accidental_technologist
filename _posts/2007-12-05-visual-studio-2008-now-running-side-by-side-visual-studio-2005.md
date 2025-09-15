---
id: 178
title: 'Visual Studio 2008 Now Running Side-by-side Visual Studio 2005'
date: '2007-12-05T22:45:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=178'
permalink: /visual-studio/visual-studio-2008-now-running-side-by-side-visual-studio-2005/
dsq_thread_id:
    - '95924458'
categories:
    - 'Visual Studio'
---

I have been having a few Vista problems lately and paved my system and put Windows XP Pro back on it. I figured this was a good time to setup my development environment the way I wanted it. My goal was to have Visual Studio 2005 and Visual Studio 2008 on the same system.

##### **Visual Studio 2005 Environment**

I know Visual Studio 2008 can target the .NET Framework 2.0, which I have some client applications running, but opening a Visual Studio 2005 project in VS 2008 converts the project to a new project format and you can no longer open the project in VS 2005. The only way to do this is maintain two separate project files for each solution.

My current development environment consisted of:

- Visual Studio 2005 with Service Pack 1
- SQL Server 2005 Developer Edition with SQL Management Tools
- SQL Server 2005 Express
- .NET Framework 2.0
- .NET Framework 3.0
- [GhostDoc 2.12 for VS 2005](https://www.roland-weigelt.de/ghostdoc/download05.php?version=2.1.2for2005)
- MSDN Library
- [Visual SVN 1.31](https://www.visualsvn.com/) and Subversion

My environment is pretty simple, not many add-ins. I don't like too many add-ins as I travel to clients and if I have to work on different systems I don't want to be handicapped by the dependency on a third party tool a developer may not have.

I installed the above tools and made sure everything worked as before with my projects. Everything worked fine.

##### **Visual Studio 2008 Environment**

I wanted to get my VS 2008 environment as close to my VS 2005 as I could with a few extra tools. The environment looks like this:

- Visual Studio 2008
- SQL Server 2005 Developer Edition with SQL Management Tools (already installed)
- SQL Server 2005 Express (already installed)
- .NET Framework 3.5
- [GhostDoc 2.12 for VS 2008](https://www.roland-weigelt.de/ghostdoc/download08.php?version=2.1.2for2008)
- MSDN Library
- Entity Framework Beta 2
- Entity Framework Tools CTP

I was installing from a clean install but if I wasn't and had the VS 2008 beta 2 on my system I would have had to uninstall everything first. I wrote an article for [InfoQ on the subject](https://www.infoq.com/news/2007/11/vs2008-upgradetips).

I did run into a couple problems with the Entity Framework beta 2 on VS 2008. The installer fails and apparently targets a certain .NET Framework 3.5 build. A [very helpful blog post](https://www.talentgrouplabs.com/blog/archive/2007/11/21/install-entity-framework-on-visual-studio-2008-rtm.aspx) from Ralf Rottmann did the trick.

**NOTE:** Ralf's posts shows a way to hack the MSI file using Notepad++ but there is a better way using a tool from Microsoft called [Orca](https://astebner.sts.winisp.net/Tools/Orca.zip), which gives a nice editor for the MSIs.

Installing the Entity Framework Tools also failed and could fixed with the same method, also pointed out by Ralf Rottmann in a [separate blog post](https://www.talentgrouplabs.com/blog/archive/2007/11/23/install-entity-framework-tools-on-vs-2008-rtm.aspx).

Keep in mind if you run GhostDoc you will need version 2.12 which has a fix for running VS 2005 and VS2008 side-by-side.

Overall the experience went very smooth with the exception of the Entity Framework install. Everything is running fine and getting along well.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Visual Studio 2008](https://technorati.com/tags/Visual%20Studio%202008),[Visual Studio 2005](https://technorati.com/tags/Visual%20Studio%202005),[Microsoft](https://technorati.com/tags/Microsoft),[Entity Framework](https://technorati.com/tags/Entity%20Framework)</div>