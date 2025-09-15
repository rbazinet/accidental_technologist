---
id: 467
title: 'InfoQ: DataMapper Turns the Big 1.0'
date: '2010-07-22T08:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/infoq/infoq-datamapper-turns-the-big-1-0/'
permalink: /infoq/infoq-datamapper-turns-the-big-1-0/
jd_tweet_this:
    - 'yes'
wp_jd_bitly:
    - 'https://bit.ly/ap0ySM'
wp_jd_target:
    - 'https://accidentaltechnologist.com/infoq/infoq-datamapper-turns-the-big-1-0/'
dsq_thread_id:
    - '120833075'
categories:
    - InfoQ
tags:
    - activerecord
    - datamapper
    - InfoQ
    - 'Ruby on Rails'
---

[Since my visit to RailsConf in June](https://accidentaltechnologist.com/ruby-on-rails/railsconf-2010/) I have been pursuing various topics to write about for InfoQ. I have been particularly interested in [DataMapper](https://datamapper.org/) and the fact that [version 1.0 has been released](https://datamapper.org/articles/datamapper-100-released.html).

I had the chance to talk with [Dan Kubb](https://github.com/dkubb/), the lead on the project, about version 1.0 and it went out this morning on InfoQ, titled [DataMapper Reaches 1.0 Milestone](https://www.infoq.com/news/2010/07/datamapper-1.0). It was interesting to see the details of this project while thinking how Rails uses ActiveRecord.

One of the more impressive aspects of this project is the number of plugins available. From the [DataMapper web site](https://datamapper.org/docs/dm_more/):

> #### Resource Plugins
> 
> These plugins modify the behavior of all resources in an application, adding new functionality to them, or providing easier ways of doing things.
> 
> ##### DM-Validations
> 
> This provides validations for resources. The plugin both defines automatic validations based on the properties specified and also allows assignment of manual validations. It also supports contextual validation, allowing a resource to be considered valid for some purposes but not others.
> 
> ##### DM-Timestamps
> 
> This defines callbacks on the common timestamp properties, making them auto-update when the models are created or updated. The targeted properties are `:created_at` and `:updated_at` for DateTime properties and `:created_on` and `:updated_on` for Date properties.
> 
> ##### DM-Aggregates
> 
> This provides methods for database calls to aggregate functions such as `count`, `sum`, `avg`, `max` and `min`. These aggregate functions are added to both collections and Models.
> 
> ##### DM-Types
> 
> This provides several more allowable property types. `Enum` and `Flag` allow a field to take a few set values. `URI`, `FilePath`, `Regexp`, `EpochTime` and `BCryptHash` save database representations of the classes, restoring them on retrieval. `Csv`, `Json` and `Yaml` store data in the field in the serial formats and de-serialize them on retrieval.
> 
> ##### DM-Serializer
> 
> This provides ?`to_*`? methods which take a resource and convert it to a serial format to be restored later. Currently the plugin provides `to_xml`, `to_yaml` and `to_json`
> 
> ##### DM-Constraints
> 
> This plugin provides foreign key constrains on has n relationships for Postgres and MySQL adapters.
> 
> ##### DM-Adjust
> 
> This plugin allows properties on resources, collections and models to incremented or decremented by a fixed amount.
> 
> #### is Plugins
> 
> These plugins make new functionality available to models, which can be accessed via the `is` method, for example `is :list`. These make the models behave in new ways.
> 
> ##### DM-Is-List
> 
> The model acts as an item on a list. It has a position, and there are methods defined for moving it up or down the list based on this position. The position can also be scoped, for example on a user id.
> 
> ##### DM-Is-Tree
> 
> The model acts as a node of a tree. It gains methods for querying parents and children as well as all the nodes of the current generation, the trail of ancestors to the root node and the root node itself.
> 
> ##### DM-Is-Nested\_Set
> 
> The model acts as an item in a ?nested set?. This might be used for some kind of categorization system, or for threaded conversations on a forum. The advantage this has over a tree is that is easy to fetch all the descendants or ancestors of a particular set in one query, not just the next generation. Added to a nested set is more complex under the hood, but the plugin takes care of this for you.
> 
> ##### DM-Is-Versioned
> 
> The model is versioned. When it is updated, instead of the previous version being lost in the mists of time, it is saved in a subsidiary table, so that it can be restored later if needed.
> 
> ##### DM-Is-State\_Machine
> 
> The model acts as a state machine. Instead of a column being allowed to take any value, it is used to track the state of the machine, which is updated through events that cause transitions. For example, this might step a model through a sign-up process, or some other complex task.
> 
> ##### DM-Is-Remixable
> 
> The model becomes ?remixable?. It can then be included (or remixed) in other models, which defines a new table to hold the remixed model and can have other properties or methods defined on it. It?s something like class table inheritance for relationships :)
> 
> #### Adapters
> 
> These plugins provide new adapters for different storage schemes, allowing them to be used to store resources, instead of the more conventional relational database store.
> 
> ##### DM-CouchDB-Adapter
> 
> An adapter for the JSON based document database [couch-db](https://incubator.apache.org/couchdb/). The adaptor has support for both defining models backed by a couch-db store and also for couch-db views.
> 
> ##### DM-Rest-Adapter
> 
> An adapter for a XML based REST-backed storage scheme. All the usual DataMapper operations are performed as HTTP GETs, POSTs, UPDATEs and DELETEs, operating on the URIs of the resources.
> 
> #### Integration Plugins
> 
> These plugins are designed to ease integration with other libraries, currently just web frameworks.
> 
> ##### merb\_datamapper
> 
> Integration with the [merb](https://www.merbivore.com/) web framework. The plugin takes care of setting up the DataMapper connection when the framework starts, provides several useful rake tasks as well as generators for Models, ResourceControllers and Migrations.
> 
> ##### rails\_datamapper
> 
> Integration with [Rails](https://www.rubyonrails.org/). It provides a Model generator and also takes care of connecting to the data-store through DataMapper.
> 
> #### Utility Plugins
> 
> These provide useful functionality, though are unlikely to be used by every project or assist more with development than production use.
> 
> ##### DM-Sweatshop
> 
> A model factory for DataMapper, supporting the creation of random models for specing or to fill an application for development. Properties can be picked at random or made to conform to a variety of regular expressions. dm-sweatshop also understands has n relationships and can assign a random selection of child models to a parent.
> 
> ##### DM-Migrations
> 
> Migrations for DataMapper, allowing modification of the database schema with more control than`auto_migrate!` and `auto_upgrade!`. Migrations can be written to create, modify and drop tables and columns. In addition, the plugin provides support for specing migrations and verifying they perform as intended.
> 
> ##### DM-Shorthand
> 
> This plugin eases operations involving models across multiple repositories, allowing wrapping in a`repository(:foo)` block to be replaced with a `MyModel(:foo).some_method` call.
> 
> ##### DM-Observer
> 
> Observers watch other classes, doing things when certain operations are performed on the remote class. This can be anything, but they are commonly used for writing logs or notifying via email or xmpp when a critical operation has occurred.
> 
> ##### DM-CLI
> 
> The `dm` executable is a DataMapper optimized version of `irb`. It automatically connections to a data-store based on the arguments passed to it and supports easy loading of DataMapper plugins, models from a directory as well as reading connection information from a YAML configuration file.
> 
> ##### DM-Querizer
> 
> This provides alternate syntax for queries, replacing the hash which DataMapper uses with a more ?ruby-ish? use of `&&`, `==` and `=~`.
> 
> ##### DM-Ar\_Finders
> 
> ActiveRecord style syntax for DataMapper. This includes functionality such as `find_by_name`,`find_or_create` and `find_all_by_title`.

DataMapper puts a lot more of the responsibility of the model right in the model definition, similar to Django and other frameworks. The nice part about this is everything is in one place and we remove the need for migrations when creating new models. Currently, migrations are needed to change a model but that may change too.

I am looking forward to using DataMapper more.