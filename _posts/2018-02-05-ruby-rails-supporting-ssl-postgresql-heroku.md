---
id: 1189
title: 'Ruby on Rails - Supporting SSL for PostgreSQL on Heroku'
date: '2018-02-05T09:20:27-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1189'
permalink: /ruby-on-rails/ruby-rails-supporting-ssl-postgresql-heroku/
dsq_thread_id:
    - '6460170271'
categories:
    - 'Ruby on Rails'
tags:
    - heroku
    - postgresql
    - 'Ruby on Rails'
---

For anyone who received this notice from Heroku:

> Since 2016, all newly-provisioned Heroku Postgres databases have enforced the use of SSL to keep your data safe. However, one or more of your Postgres databases are running on legacy infrastructure, which does not enforce the use of SSL. In order to update your database to our security standards, and in response to potential impacts caused by Spectre and Meltdown, all databases - including those on legacy infrastructure - will be moved to our new Heroku PGX plans in a set of maintenances starting in March 2018 and concluding by April 2018. **What Do I Need to Do** In preparation for these maintenances, please check that your applications are using SSL to connect to your Postgres database and enable SSL connections if needed. Instructions on how to perform these steps are available in Dev Center.

 If you're using [Rails 4.1+ there is a support article on the Heroku Dev Center](https://devcenter.heroku.com/articles/rails-database-connection-behavior), that helps clarify making updates to our database.yml file. This allows customizing some connection behavior to PostgreSQL. Some parts of the database.yml file that cannot be changed include: > You cannot use the config/database.yml to set any values found in ENV\['DATABASE\_URL'\]. This is a list of attributes you cannot change: - adapter
> - database
> - username
> - password
> - host
> - port

 But, what can be changed include sslmode:

```yaml
production:
  sslmode: require # (disable|allow|prefer|require)
  pool: 15
```

 I decided it would be helpful to reach out to Heroku to understand their guidance with regard to their notice. Their response: > If you're using the pg gem, the default sslmode setting (and for libpq, the library that underpins it), is prefer this means that should the server have SSL support, it will be used when the connection is established. This means there should be no action required, though if you wish, it's worth a test with spinning up a staging environment with a non-legacy Postgres instance.

 It seems if you're using Ruby on Rails with the [pg gem](https://rubygems.org/gems/pg), you should be OK doing nothing but with brownout period scheduled, it's probably a good idea to test during one of those times. Heroku Support also indicated setting the environment variable PGSSLMODE would also override the default behavior for sslmode used by libpq. It seems this is a notice which doesn't effect a majority of Heroku customers and is a necessary and worthwhile upgrade. Hopefully this helps others as the public information available for this from Heroku is minimal.