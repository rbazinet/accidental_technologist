---
id: 961
title: 'Errors Installing the pg Gem When Using Heroku Postgres.app'
date: '2013-12-19T09:14:34-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=961'
permalink: /ruby-on-rails/errors-installing-the-pg-gem-when-using-heroku-postgres-app/
dsq_thread_id:
    - '2060887786'
categories:
    - 'Ruby on Rails'
tags:
    - postgresapp
    - postgresql
    - Ruby
    - 'Ruby on Rails'
    - rubygem
---

I?ve been using the [PostgreSQL Mac OS X app from Mattt Thompson and Heroku](http://postgresapp.com/) for quite some time now. ?If you don?t know what it is, it?s a drop in app bundle for the PostgreSQL database. ?There are many ways that work, this just happens to be really simple.

I use PostgreSQL with my Ruby on Rails projects and combine that with the [pg ruby gem](https://bitbucket.org/ged/ruby-pg/wiki/Home). ?

I ran into a situation where the pg gem would not install because it could not find pg\_config in a known location on my Mac. ?The error occurred on Rails 3.2 but 4.0 may show the same behavior. ?

### The Error

The error can come up when running a `bundle install` or just a straight `gem install pg` from the command line. The resulting error may look something like this:

```bash
Installing pg (0.17.0) with native extensions
Gem::Installer::ExtensionBuildError: ERROR: Failed to build gem native extension
.
.
.
.
An error occurred while installing pg (0.17.0), and Bundler cannot continue.
Make sure that `gem install pg -v '0.17.0'` succeeds before bundling.
```

### The Solution

I already mentioned the problem is the gem install not finding pg\_config during installation. ?So let?s find it.

1. First, find where pg_config is located. Run this command from a terminal window:

```bash
which pg_config
```

Should display something like this:

```bash
/Applications/Postgres.app/Contents/MacOS/bin/pg_config
```

2\. You can tell RubyGems where your pg\_config file is located:

```bash
gem install pg -- --with-pg-config='PATH_TO_YOUR_PG_CONFIG'
```

For example, pg_config is here on my system:

```bash
/Applications/Postgres.app/Contents/MacOS/bin/pg_config
```

So I would install the gem this way:

```bash
gem install pg -- --with-pg-config='/Applications/Postgres.app/Contents/MacOS/bin/pg_config'
```

The pg gem should now install. I hope this helps.

**UPDATE:** Scott Watermasysk points out another good solution:

> [@rbazinet](https://twitter.com/rbazinet) another route that worked for me was to put the pg.app (as a folder) in my path. This allows the config to be properly found.
> 
> ? Scott Watermasysk (@scottw) [December 19, 2013](https://twitter.com/scottw/statuses/413680668334641152)

<script src="//platform.twitter.com/widgets.js" type="text/javascript"></script>