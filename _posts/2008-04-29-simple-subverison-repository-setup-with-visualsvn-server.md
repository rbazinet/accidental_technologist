---
id: 264
title: 'Simple Subverison Repository Setup with VisualSVN Server'
date: '2008-04-29T09:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=264'
permalink: /programming/simple-subverison-repository-setup-with-visualsvn-server/
dsq_thread_id:
    - '95913256'
categories:
    - Programming
---

I have been using some form of source control for what seems an eternity. I started out using the copy-to directory method because source control did not really exist at the time. More recently I have used both Microsoft Visual SourceSafe, [SourceGear's Vault](https://www.sourcegear.com/vault/index.html) and [Team Foundation Server](https://msdn2.microsoft.com/en-us/teamsystem/aa718934.aspx), all of which I use because of client-specific needs.

I have a few projects I am developing for my own company and choosing source control has really not needed much discussion. I use [Subversion](https://subversion.tigris.org/) for everything because it's free, works really well, has great community support and support a wide-variety of clients on many operating systems. The other products such as Vault and Team Foundation Server use Microsoft SQL Server and that is just one more license and database to maintain.

Since this is Subversion and my clients of choice are pretty open I use [TortoiseSVN](https://tortoisesvn.tigris.org/) so I can access the repositories from Windows Explorer. I also use [VisualSVN](https://www.visualsvn.com/) which supports both Visual Studio 2005 and 2008 and integrates into the development environment, letting me checkout and check-in when the same way other source control clients work in Visual Studio.

Much of the time users of TortoiseSVN may be accessing an existing repository for an open source project or something existing for their job. Most developers don't have to setup their own Subversion repository, but when you do....there is a simple way from the creator of VisualSVN. They have a free product called [VisualSVN Server](https://www.visualsvn.com/server/) with will aid you in setting up and configuring your Subversion repositories.

### VisualSVN Server

> VisualSVN Server is a package that contains everything you need to install, configure and manage **Subversion server** for your team on **Windows platform.** It includes Subversion, Apache and a management console.

### Installation

The download is only about 5MB and is a simple MSI setup application. Running the setup you are faced with minimal questions, which can be answered easily. The defaults seem to work pretty well.

[![VisualSVN-Setup](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/VisualSVN-Setup_thumb.jpg)](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/VisualSVN-Setup_2.jpg)

The only data needed:

- **Location** - Where is the executable parts of Subversion going to live.
- **Repositories** - Where all items under source control will be stored. This would be a great directory, and all of its subdirectories, to add to your automated backup solution.
- **Server Port** - The two options are 8443 (default) and 443. I just stuck with the default.
- **Use secure connection checkbox** - will create its own certificate if this is selected. I used this and it works very well giving the user a nice secure connection.

Installation takes less than a minute and you are done.

### Server Manager

[![VisualSVN-ServerManager](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/VisualSVN-ServerManager_thumb.jpg)](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/VisualSVN-ServerManager_2.jpg)

Once installation is complete, running the VisualSVN Server manager presents the user with the screen above. It gives a nice status screen telling us the health of the VisualSVN server, in this case it says **running**.

We are able to now add Users, Groups and Repositories.

[![VisualSVN-CreateUser](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/VisualSVN-CreateUser_thumb.jpg)](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/VisualSVN-CreateUser_2.jpg)

The first thing I did was to add myself as a user, nothing difficult just a user name and password. One of the options here is the ability to add Groups which would help with issues of security. I don't currently have a need for groups but who knows in the future. This could be use for an open source project having a group for contributors and another with read-only access for those just interested in getting the source.

[![VisualSVN-CreateRepository](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/VisualSVN-CreateRepository_thumb.jpg)](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/VisualSVN-CreateRepository_2.jpg)

Creating the first repository is simple too, right-click on Repositories in the manager and select Create New Repository..., enter the name you want and leave the default structure checked and that's it. The new repository is created.

[![VisualSVN-Complete](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/VisualSVN-Complete_thumb.jpg)](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/VisualSVN-Complete_2.jpg)

Once it's created it is easy to see the default structure we expect in our Subversion repositories with **branches**, **tags** and **trunk**. You could probably have a simpler structure but I think why go away from what has emerged as a standard for the structure of a repository.

[![VisualSVN-Security](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_8FF2/VisualSVN-Security_thumb.jpg)](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_8FF2/VisualSVN-Security_2.jpg)

Selecting a repository and choosing Security from the menu gives you a chance to setup any type of security here. You could really lock it down or give access to previously created groups. Again, my needs are really simple here so I have myself and will set everyone to No Access for now.

### Connecting from TortoiseSVN

A Subversion repository is not very useful with having clients to connect to it. I use two, as I mentioned before, TortoiseSVN and the VisualSVN client for Visual Studio.

[![TortoiseSVN](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/TortoiseSVN_thumb.jpg)](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/TortoiseSVN_2.jpg)

Connecting to the new repository with TortoiseSVN gives us a prompt where we put in the user name and password created earlier and we are connected. Granted, we don't have a project in there yet but this shows it's all working.

[![RepositoryUpdate](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/RepositoryUpdate_thumb.jpg)](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_3C8/RepositoryUpdate_2.jpg)

Brining down the only items in the repository, 3 empty directories.

### Connecting in Visual Studio with VisualSVN Client

[![VS2008-VisualSVN](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_8FF2/VS2008-VisualSVN_thumb.jpg)](https://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SimpleSubverisonRepositorySetupwithVisua_8FF2/VS2008-VisualSVN_2.jpg)

I am not here to show anyone how to use source control from within Visual Studio. I just want to demonstrate some coolness with setting up something so important as source control and have it all just work. Connecting from Visual Studio to our existing repository is easy and as can be seen, it just works. Plugging the URL to the repository, either local or remote and having a local place to put the files and you are done.

### Finally

I looked at [Git](https://git.or.cz/) before settling on Subversion. Git seems to be the hot new kid on the block but I am not sure of its value to a project if it is not open source. Git seems to have distributed power but not much better in any other way.

Scott Hanselman had a good podcast about Git, called Dis[tributed Source Control with Git](https://www.hanselminutes.com/default.aspx?showID=126).

I think Subversion is a step above CVS from the open source side of things and different than SourceGear Vault and Team Foundation just because I didn't have to deal with setting up and maintaining another SQL Server.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:7601656f-52e3-4f8a-ad41-be959d9336c9" style="margin: 0px; padding: 0px; display: inline;">Technorati Tags: [VisualSVN](https://technorati.com/tags/VisualSVN),[Subversion](https://technorati.com/tags/Subversion),[Source Control](https://technorati.com/tags/Source%20Control)</div>