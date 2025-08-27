---
id: 14
title: 'Visual Studio .NET 2003 C# Compile Error CS0042'
date: '2005-07-13T08:07:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=14'
permalink: /visual-studio/visual-studio-net-2003-c-compile-error-cs0042/
dsq_thread_id:
    - '95923699'
categories:
    - 'Visual Studio'
---

I am working on a VS.NET 2003 C# web project that contains multiple projects and on occasion I get an annoying fatal build error (CS0042):

> *Unexpected error creating debug information file '&lt;project path&gt;\\obj\\Debug\\&lt;DLL Name&gt;.PDB': The process cannot access the file because it is being used by another process.*

Starting with a Google search led me to many developers having the same or similar problems with the following advice:

1. Exit VS.NET, restart VS.NET and reopen project
2. Change project from Debug Build to Release Build and visa-versa.
3. Remove all Enums from classes and just use in the namespace
4. Ensure all DLL projects have 'CopyLocal' set to true AND references to these DLL's be a Project Reference and not simple a DLL reference.

I followed all of the guidance of the experiences I saw in my Google search with #1 working every time. The only problem with this solution was exiting and restarting VS.NET all the time. In case you haven't had the pleasure, it takes a long time to load. Although this worked, it didn't seem the greatest solution to me and was a poor way to fix a deeper problem.

Further sluething using [Process Explorer](http://www.sysinternals.com/Utilities/ProcessExplorer.html) from Sysinternals revealed Devenv.exe was holding my PDB file open. A post to the [MSDN .NET General Newsgroup](http://msdn.microsoft.com/newsgroups/default.aspx?dg=microsoft.public.dotnet.general&lang=en&cr=US) let to some further clues.

As I pointed out, I am not the only one having this problem, and it seems Microsoft is well aware of these issues. KnowledgeBase articles [313512](http://support.microsoft.com/default.aspx?scid=kb;en-us;313512) and [887818](http://support.microsoft.com/default.aspx?scid=kb;en-us;887818) show occurances of the bug and a hotfix that is available by request-only. I don't think this is the right approach to such an annoying problem and either does [Frans Bouma](http://weblogs.asp.net/fbouma/archive/2005/07/13/419205.aspx) who has a great post on his blog about this very problem and the lack of service pack for VS.NET 2003.

I called Microsoft to request this hotfix and the person I spoke with fromt he VS.NET 2003 C# Support Team told me I was the third person requesting this hotfix THIS MORNING. So, why don't we see a service pack before now? We have seen multiple hotfixes for Windows XP already and VS.NET 2003 has been in use just as long. If I recall correctly we had six service packs for Visual Studio 6.

I have installed the hotfix and all seems to be working well with no problems reported. I hope this helps others out there.