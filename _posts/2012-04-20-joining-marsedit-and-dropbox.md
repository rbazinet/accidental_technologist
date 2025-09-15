---
id: 713
title: 'Joining MarsEdit and Dropbox'
date: '2012-04-20T09:00:12-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=713'
permalink: /technology/joining-marsedit-and-dropbox/
dsq_thread_id:
    - '657468127'
categories:
    - Technology
tags:
    - dropbox
    - marsedit
    - WordPress
---

I use [MarsEdit from Red Sweater Software](https://www.red-sweater.com/marsedit/) as my exclusive blogging tool on the Mac and have over the last couple years. ?I tend to write lots of draft posts on my desktop Mac Pro that never get published or I work on them when I can before pushing out to my Wordpress blog.

I also use MarsEdit on my MacBook Air when I travel or even if I am working on the couch in the evenings. ?All of the drafts in MarsEdit are saved locally on the computer I am going the writing and once I want to be able to edit from the other computer I end up pushing as a draft to the blog and pulling it down via MarsEdit. ?This is a tedious task and has problems. ?I don't know how many times I pushed up a draft and forgot I did a few days later only to work on an old draft locally.

I then had the idea of possibly setting up MarsEdit to save local drafts to Dropbox but there didn't appear to be an option in MarsEdit to change the location of local storage.

But?there is usually a way to do anything.

The steps below worked great for me, you mileage may vary. ?If Dropbox is installed in its default configuration then these instructions should work for you. ?I configured my systems with my Mac Pro being the "main" system and my MacBook Air as the secondary. ?I had local drafts on my Mac Pro but **NOT** on my MacBook Air. ?If you follow these steps exactly and have local drafts on each system them you *will* lose data.

Without further ado, follow these steps. ?I assume you know how to open a terminal sessions and feel comfortable typing command.

1\. Make sure you quit MarsEdit from each system you are going to change the location of local drafts.

2\. Find local MarsEdit drafts on your main system - A bit of spelunking reveals where they live in:

```bash
~/Library/Application Support/MarsEdit/LocalDrafts
```

3\. Create folder for drafts in Dropbox.

```bash
mkdir ~/Dropbox/Library
```

```bash
mkdir ~/Dropbox/Library/MarsEdit
```

4\. Move the local drafts from the main computer to Dropbox, enter these two commands:

```bash
cd ~/Library/Application\ Support/MarsEdit
```

```bash
mv LocalDrafts ~/Dropbox/Library/MarsEdit/LocalDrafts
```

5. Now let's fool MarsEdit into thinking nothing has changed. Symlink the old name to the new location.

```bash
ln -s ~/Dropbox/Library/MarsEdit/LocalDrafts ./LocalDrafts
```

Now, on each of the other machines start with step 6.

6\. Remove the local draft folder (if it's not empty and delete you will lose data).

```bash
rm -rf ~/Library/Application\ Support/MarsEdit/LocalDrafts
```

7. Time to fool MarsEdit here too. Symlink the old name to the new location.

```bash
ln -s ~/Dropbox/Library/MarsEdit/LocalDrafts ./LocalDrafts
```

Repeats steps 6 and 7 for each computer you need to share local drafts.

Once you start up MarsEdit on each of these machines, you should see the same local drafts. ?If not, then double-check the steps above.

?