---
id: 398
title: 'Hiding User Accounts on Windows 7'
date: '2010-04-01T11:26:36-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=398'
permalink: /microsoft/hiding-user-accounts-on-windows-7/
dsq_thread_id:
    - '95968764'
categories:
    - Microsoft
---

I recently needed to create a local user account for a project which involved using the Microsoft Great Plains Dynamics eConnect product. eConnect product uses some COM+ components and needs to have a user account during installation to properly setup the components. I decided the simple thing to do was to create a user named econnect just for this purpose.

### The Problem

You can see when I go to User Accounts the new account shows up. I expect the account to show up here :

[![ManageUsersBefore](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/HidingUserAccountsonWindows7_7397/ManageUsersBefore_thumb.png "ManageUsersBefore")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/HidingUserAccountsonWindows7_7397/ManageUsersBefore_2.png)

Everything works just fine but can be a bit of an annoyance when booting up and logging into Windows 7 where I have the option of logging into my regular account or my new econnect user account. I don?t want this behavior, I just want to be shown my normal enter password textbox as I am familiar. Since this is a service account and no on will ever log in to it, I don?t want the option of seeing it.

It turns out there is some registry hacking that one can do to provide a list of users you want to hide from the system. **Be warned that you could possibly add your own account to the list and be locked out of Windows 7 completely**.

### Hiding a User Account

The process is actually pretty simple, you need to fire up regedit to get started. Once regedit is running traverse to:

`HKEY_LOCAL_MACHINE\Software\Microsoft\WindowsNT\CurrentVersion\Winlogon\`

Once you have found the path in regedit the steps are pretty simple:

1. Create a new key named SpecialAccounts. Find the Winlogon key, right-click with the mouse and select New-&gt;Key and name it SpecialAccounts.
2. Next you want to select the SpecialAccounts key you just created, right-click with the mouse and select New-&gt;Key and name it UserList.
3. Finally, select the key just created which is named UserList, right-click and select New-&gt;DWORD Value or New-&gt;DWORD (32-bit) Value on 64-bit systems and name the value the name of the user you want to hide. In my case, econnect is the user I am trying to hide. The value should be 0 to hide the user or 1 to not hide user.
 
It should look something like this:

[![RegeditUserList](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/HidingUserAccountsonWindows7_7397/RegeditUserList_thumb.png "RegeditUserList")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/HidingUserAccountsonWindows7_7397/RegeditUserList_2.png)

You can repeat step 3 above for each user to hide.

And that?s all there is too it. If done correctly, the user will not show up on a logon screen or even when managing user accounts.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:acb85da3-b05a-40c5-b77c-bbfe23278806" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [Windows 7](http://technorati.com/tags/Windows+7),[Microsoft](http://technorati.com/tags/Microsoft),[eConnect](http://technorati.com/tags/eConnect)</div>