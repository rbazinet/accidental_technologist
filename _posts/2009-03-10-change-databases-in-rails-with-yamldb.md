---
id: 346
title: 'Change Databases in Rails with YamlDb'
date: '2009-03-10T17:00:22-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=346'
permalink: /ruby/change-databases-in-rails-with-yamldb/
dsq_thread_id:
    - '95925156'
categories:
    - Ruby
---

I have a few small Rails web sites I run and use SQLite3 for my database. SQLite3 is the default Rails database provider and works great, but there are times when you outgrow or anticipate a need to change databases. Perhaps a change to MySQL or PostgreSQL is in order. This could be a tricky task, especially in a production environment with existing data. I had this scenario where I had an existing SQLite3 database and wanted to move it over to MySQL but I had a fairly large amount of data I needed to move as well.

Thanks to Twitter and [@hassan](https://twitter.com/hassan) on a great Rails plug-in recommendation from Adam Wiggins called [YamlDb](https://opensource.heroku.com/), which is [hosted on GitHub](https://github.com/adamwiggins/yaml_db/tree/master). This handy little plug-in helps when you want to move from one database platform to another, say SQLite3 to MySQL.

Installation is just a simple little plug-in install, so on Rails 2.1

> `script/plugin install git://github.com/adamwiggins/yaml_db.git`

The plug-in simply uses the database.yml file from the Rails project to determine which database to connect and dumps data to a file, db/data.yml.

Since I really needed to do this in a live environment I needed to see figure how to minimize downtime and maximize my success, which with YamlDb was pretty trivial. A few steps did the trick, based on the the instructions for the project on GitHub.

1. Backed up my production.sqlite3 file to production.sqlite3.bak.
2. Ran the command `rake db:dump` (dumped all data and schema out to db/data.yml).
3. Verified db/data.yml contained data instead of some 0K file.
4. I had already had MySQL setup on another node on my Linode account with a new, empty database created. If this didn?t exist it would have to be created.
5. Changed my config/database.yml file to point to the new database on MySQL.
6. Ran `rake db:load`.
7. Tested application and all was working.
8. Removed SQLite3 database from db directory in Rails application.
9. Tested application again to make sure still works.
 
This handy little plug-in saved me a lot of time and effort and worked flawlessly.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:90644e99-8571-4af1-94a6-999b038b0c25" style="padding-right: 0px; display: inline; padding-left: 0px; float: none; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [Ruby on Rails](https://technorati.com/tags/Ruby+on+Rails),[SQLite3](https://technorati.com/tags/SQLite3),[MySQL](https://technorati.com/tags/MySQL),[YamlDb](https://technorati.com/tags/YamlDb)</div>