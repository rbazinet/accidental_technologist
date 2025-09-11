---
id: 793
title: 'Damn You Rails Multiparameter Attributes'
date: '2012-08-29T11:34:03-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=793'
permalink: /ruby-on-rails/damn-you-rails-multiparameter-attributes/
wpgplus_message:
    - ''
wpgplus_publish:
    - 'yes'
dsq_thread_id:
    - '823114652'
categories:
    - 'Ruby on Rails'
tags:
    - 'Ruby on Rails'
---

![Boy with a headache MG 0599](/assets/img/2012/08/Boy-with-a-headache-MG-05991.jpeg "Boy-with-a-headache-MG-0599.jpeg")

I came across an interesting problem that was driving me crazy when using Ruby on Rails 3.2 Date types in an application I am working on for client.

## Problem

I have a date property that is virtual and not backed by a column in a database. When trying to create a new object from a date select on a form, I was being greeted by the following error:

### ActiveRecord::MultiparameterAssignmentErrors in Users::MembershipsController#create

```
1 error(s) on assignment of multiparameter attributes
```

After some searching around the web for a solution, as any self-respecting developer does, and came up with many others facing the same problem. ?It was suggested this was a problem with Rails, a quick check on the [Github Rails](https://github.com/rails/rails) project [revealed something similar reported](https://github.com/rails/rails/issues/6825), but no solid fix I could find. ?It may be out there and if someone is aware, please let me know. ?I am using Rails 3.2.8 so any fixes that exist, should be in there.?

This works great when using the date select and storing to a database, Rails takes care of processing multiparameter attributes and pushing into the date field. ? We are talking about virtual attributes here, no database field to store the data.

## Solution

Please don't comment how bad this solution is..it's a hack, I know, but it works. I'm never too proud to share a hack.?

The goal here is to end up with and expiration date in a virtual attribute on my model. ?To accomplish this I construct a plain Ruby Date class from the components of the date from the date select form helper. ?Ruby Date expects parameters; Date.new(Year, Month, Day)

NOTE: if you try this look at the parameter values for each component of your date to make sure choose the right values. ?I have changed the default order of the date select on the form.

```ruby
params[:user][:membership_attributes][:expiration_date] = Date.new(
  params[:user][:membership_attributes][:"expiration_date(1i)"].to_i,
  params[:user][:membership_attributes][:"expiration_date(2i)"].to_i,
  params[:user][:membership_attributes][:"expiration_date(3i)"].to_i
)
```

Now remove the individual date components from the parameter hash:

```ruby
params[:user][:membership_attributes].delete(:"expiration_date(1i)")
params[:user][:membership_attributes].delete(:"expiration_date(2i)")
params[:user][:membership_attributes].delete(:"expiration_date(3i)")
```

In my case this is strictly for a Ruby Date type in Rails but the problem and solution is the same with a Ruby DateTime type. ?The date and time are broken down more, having 4i and 5i representing the time.

## Finally

This little hack works great and hopefully helps those using a version of Rails 3 that is not patched..or heck, maybe it will never be.

I'd be happy to learn this was fixed or how I could have handled this better. ?Please add some details in the comments.

?