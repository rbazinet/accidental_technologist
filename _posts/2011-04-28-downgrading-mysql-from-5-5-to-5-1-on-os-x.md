---
id: 654
title: 'Downgrading MySQL from 5.5 to 5.1 on OS X'
date: '2011-04-28T10:21:09-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=654'
permalink: /technology/downgrading-mysql-from-5-5-to-5-1-on-os-x/
dsq_thread_id:
    - '290521851'
categories:
    - Technology
tags:
    - mysql
    - oracle
---

I recently had a need to setup a new instance of MySQL on my Mac. ?I decided to use MySQL 5.5.x since it was, you know, the latest and greatest. ?Only to later find out I needed to use MySQL 5.1 instead. ?Time to downgrade.

Since I had used the 64-bit DMG from the [MySQL Community Server site](https://www.mysql.com/downloads/mysql/), the files were installed to default locations, [the Oracle documents indicate simply installing right over the current install will work fine](https://download.oracle.com/docs/cd/E17952_01/refman-5.5-en/downgrading.html):

> If you are downgrading within the same release series (for example, from 5.1.13 to 5.1.12) the general rule is that you just have to install the new binaries on top of the old ones. There is no need to do anything with the databases. As always, however, it is always a good idea to make a backup.

Notice this states a downgrade to a minor version.

When I proceeded to install 5.1, I was greeted with an error that would not allow me to install 5.1 over the top of 5.5, a clearly newer version.

> MySQL 5.1.56-community for Mac OS X can?t be installed on this disk. A newer version of this software already exists on this disk.

My first instinct was to try to determine which files were MySQL-related and start to remove them one-by-one. ?After a bit of searching around the web I found out the process of uninstalling MySQL can leave behind one particular file or set of files which prevent installing an older major version. ?I figured I would start with the least common denominator first, running the command:

> ```
> ~ $ sudo rm /var/db/receipts/com.mysql.mysql.*
> ```

After rerunning the installation from the DMG, everything went fine. ?I did have to rerun the package to create the startup-up item and create the System Preference item. ?Do note though, the Oracle document referenced above says there is no need to do anything with the databases, be warned, this was not true in downgrading to a major version..I lost my databases. ? Since it was a new install I didn't care anyway but I thought you should be warned.

I am sure the purest out there will suggest to install from source, but I'm lazy and have better things to do with my time. ?I bet you do too and hopefully this will help you.

?