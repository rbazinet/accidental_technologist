---
id: 164
title: 'Unexpected Behavior in Team Foundation Server and Visual Studio Merge Functionality'
date: '2007-11-08T11:10:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=164'
permalink: /visual-studio/unexpected-behavior-in-team-foundation-server-and-visual-studio-merge-functionality/
categories:
    - 'Visual Studio'
---

So, for one of my clients we use Team Foundation Server for our source control, overall it's pretty good.

I am working on a project for a client and we have two versions of the application. The new version is the one in active development but we still need to fix bugs and make some feature updates to the original version. The new version was created by branching from the original.

Our updates to the original source tree need to be moved over and I planned to use the TFS Merge Feature. I got ready to start my updates to the new source tree and on my first merge attempt I received this error:

[![TeamFoundationError](https://rbazinet.files.wordpress.com/2007/11/teamfoundationerror-thumb.jpg)](https://rbazinet.files.wordpress.com/2007/11/teamfoundationerror.jpg)

**Error : The merge target {0} is not mapped**

I stared at the error for a bit wondering what the heck could be wrong with my source control configuration, as it's the same as so many other developers on the project.

My usual path to problem resolution is to do a web search and if that fails then ask around the team. The result of talking with our team of consultants resulted in it working on some systems but not on others. The interesting thing was the difference in configuration between the have's and have-not's, the ones that worked were accessing both branches from the same TFS Workspace, but those that did not work had their environment broken up into two workspaces. This was my configuration.

I started looking around at the TFS Object Model Documentation on Microsoft's MSDN site and found the Workspace class and realized the Merge() method was on this class, which would mean, or imply, inter-Workspace merging is not supported. [Here is a snippet from the MSDN Library](https://msdn2.microsoft.com/en-us/library/microsoft.teamfoundation.versioncontrol.client.workspace.merge(VS.80).aspx):

[![TFS_Merge](https://rbazinet.files.wordpress.com/2007/11/tfs-merge-thumb.jpg)](https://rbazinet.files.wordpress.com/2007/11/tfs-merge.jpg)

This clearly shows where the Merge() method belongs. I changed my configuration and removed the second Workspace:

[![TFS_Workspaces](https://rbazinet.files.wordpress.com/2007/11/tfs-workspaces-thumb.jpg)](https://rbazinet.files.wordpress.com/2007/11/tfs-workspaces.jpg)

 Workspace #1 looks like this:

[![TFS_WS1](https://rbazinet.files.wordpress.com/2007/11/tfs-ws1-thumb.jpg)](https://rbazinet.files.wordpress.com/2007/11/tfs-ws1.jpg)

Workspace #2 looks like this:

[![TFS_WS2](https://rbazinet.files.wordpress.com/2007/11/tfs-ws2-thumb.jpg)](https://rbazinet.files.wordpress.com/2007/11/tfs-ws2.jpg)

And the two combined into just one Workspace:

[![TFS_WS3](https://rbazinet.files.wordpress.com/2007/11/tfs-ws3-thumb.jpg)](https://rbazinet.files.wordpress.com/2007/11/tfs-ws3.jpg)

This changed worked beautifully. I am a bit surprised you can do inter-Workspace merging or a least I could not find one. I can now Merge easily amongst my branches.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Team Foundation Server](https://technorati.com/tags/Team%20Foundation%20Server), [TFS](https://technorati.com/tags/TFS), [Visual Studio](https://technorati.com/tags/Visual%20Studio), [Microsoft](https://technorati.com/tags/Microsoft)</div>