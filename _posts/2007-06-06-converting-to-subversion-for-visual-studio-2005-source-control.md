---
id: 114
title: 'Converting to Subversion for Visual Studio 2005 Source Control.'
date: '2007-06-06T14:26:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=114'
permalink: /technology/converting-to-subversion-for-visual-studio-2005-source-control/
dsq_thread_id:
    - '95924291'
categories:
    - Technology
---

I have used Visual SourceSafe for source control for many years. Most recently I have used either [Vault](https://www.sourcegear.com/vault/index.html) from [Sourcegear](https://www.sourcegear.com) or Team Foundation Server from Microsoft. When I am working from home on smaller projects Vault has been my tool of choice, they give a free single-user licence, but they rely on Microsoft SQL Server which needs to be maintained and is therefore not very practical.

So, after much searching on the net for what others were using the answers kept coming up [Subversion](https://subversion.tigris.org/), which is an open-source version control system that many open-source projects have turned to. I have heard of both Subversion and CVS but not being much of an open source guy I was not that familiar with it. I decided to give it try and was pleasantly surprised how easy it was to setup and use. Subversion is command line tool and for those used to MS-DOS it is not too bad.

Since most of my days are spent using a graphical user interface (Windows XP) I tried to find a version control system which would support a GUI. Other than the ones I have been using (Vault, Team Foundation, Visual SourceSafe), there was little to be found except...[TortoiseSVN](https://tortoisesvn.net/). TortoiseSVN installs itself into Windows Explorer and is activated through right mouse click on a directory in Explorer to manage the repository. It is a seamless integration into Explorer and very nice to use.

TortoiseSVN offers a wonderful set of [features](https://tortoisesvn.tigris.org/) such as managing all branch, commits and reports right from Windows Explorer. The version, 1.43, as of this writing really is feature rich. From the TortoiseSVN site:

#### Features of TortoiseSVN/Subversion

- Easy to use 
    - all commands are available directly from the [windows explorer](https://tortoisesvn.tigris.org/ExplorerIntegration.html#contextmenus).
    - only commands that make sense for the selected file/folder are shown. You won't see any commands that you can't use in your situation.
    - See the [status of your files](https://tortoisesvn.tigris.org/ExplorerIntegration.html#overlays) directly in the Windows explorer
    - descriptive dialogs, constantly improved due to user feedback
    - allows moving files by right-dragging them in the windows explorer
- All Subversion protocols are supported 
    - https://
    - https://
    - svn://
    - svn+ssh://
    - file:///
    - svn+XXX://
- [Powerful commit dialog](https://tortoisesvn.tigris.org/commitdialog.html)
    - [integrated spell checker](https://tortoisesvn.tigris.org/commitdialog.html#spellchecker) for log messages
    - [auto completion](https://tortoisesvn.tigris.org/commitdialog.html#autocompletion) of paths and keywords of the modified files
    - [text formatting](https://tortoisesvn.tigris.org/commitdialog.html#textformatting) with special chars
- The big picture 
    - Can create a [graph](https://tortoisesvn.tigris.org/bigpicture.html#revisiongraph) of all revisions/commits. You can then easily see where you created a tag/branch or modified a file/folder
    - Graphs of [commit statistics](https://tortoisesvn.tigris.org/bigpicture.html#statistics) of the project
    - Easy [comparing of two branches or tags](https://tortoisesvn.tigris.org/bigpicture.html#dirdiff)
- Per project settings 
    - minimum log message length to avoid accidentally committing with an empty log message
    - language to use for the spell checker
- [Integration with issue tracking systems](https://tortoisesvn.tigris.org/issuetrackers.html)TortoiseSVN provides a flexible mechanism to integrate any web based bug tracking system.
    
    
    - A separate [input box](https://tortoisesvn.tigris.org/issuetrackers.html#commit) to enter the issue number assigned to the commit, or [coloring](https://tortoisesvn.tigris.org/issuetrackers.html#commit) of the issue number directly in the log message itself
    - When showing all log messages, an [extra column](https://tortoisesvn.tigris.org/issuetrackers.html#log) is added with the issue number. You can immediately see to which issue the commit belongs to.
    - Issue numbers are converted into links which open the webbrowser directly on the corresponding issue
    - Optional warning if a commit isn't assigned to an issue number
- Helpful Tools 
    - [TortoiseMerge](https://tortoisesvn.tigris.org/TortoiseMerge.html)
        - Shows [changes](https://tortoisesvn.tigris.org/TortoiseMerge.html#diff) you made to your files
        - Helps [resolving conflicts](https://tortoisesvn.tigris.org/TortoiseMerge.html#merge)
        - Can [apply patchfiles](https://tortoisesvn.tigris.org/TortoiseMerge.html#patch) you got from users without commit access to your repository
    - [TortoiseBlame](https://tortoisesvn.tigris.org/blame.html): to show blames of files. Shows also log messages for each line in a file.
    - [TortoiseIDiff](https://tortoisesvn.tigris.org/TortoiseIDiff.html): to see the changes you made to your image files
    - SubWCRev: to include the revision numbers/dates/... into your source files
- Available in [many languages](https://tortoisesvn.net/translation_status)
- TortoiseSVN is stable 
    - Before every release, we create one or more 'release candidates' for adventurous people to test first.
    - During development cycles, many people test intermediate builds. These are built every night automatically and made available to all our users. This helps finding bugs very early so they won't even get into an official release.
    - A big user community helps out with testing each build before we release it.
    - A custom crash report tool is included in every TortoiseSVN release which helps us fix the bugs much faster, even if you can't remember exactly what you did to trigger it.
- Support 
    - Extensive and descriptive [documentation](https://tortoisesvn.net/support) is available in several formats and languages
    - A big list of [frequently asked questions](https://tortoisesvn.net/faq) and problems with all the answers is also available
    - For your specific problems, we have a [mailing list](https://tortoisesvn.tigris.org/list_etiquette.html) where many users can help you. Usually you get an answer for your problem within a few hours.

TortoiseSVN makes a great Subversion client but working within Visual Studio is difficult to manage the Subversion repository by first checking them out in Windows Explorer. I found a great Visual Studio add-in called [VisualSVN](https://www.visualsvn.com/?gclid=CIGTx9eE0IwCFSBMGgodmiU0tQ) that integrates into Visual Studio and allows management of the repository much the same way Visual SourceSafe and Team Foundation Server.

VisualSVN comes with a price tag of $49. I am not affiliated with this company in any way, just a happy customer.

I am just learning how to setup and manage a Subversion repository, along the way I found this great [free book](https://svnbook.red-bean.com/) available, one which is also published by O'Reilly. I am sure the authors would rather see you order the book from Amazon or another retailer but who can argue when it's made available for free online.

I have been using Subversion for a few weeks now and very happy with it so far. I think for small teams this will work out very well.

<div class="wlWriterSmartContent" style="display:inline;margin:0;
padding:0;">Technorati Tags: [Visual Studio](https://technorati.com/tags/Visual%20Studio), [Subversion](https://technorati.com/tags/Subversion), [VisualSVN](https://technorati.com/tags/VisualSVN)</div>