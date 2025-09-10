---
id: 1665
title: 'How to Fix Rails Flash Rendering When Using Hotwire'
date: '2021-05-14T09:06:31-04:00'
author: admin
layout: post
guid: 'https://accidentaltechnologist.com/?p=1665'
permalink: /ruby-on-rails/how-to-fix-rails-flash-rendering-when-using-hotwire/
categories:
    - Hotwire
    - 'Ruby on Rails'
tags:
    - Hotwire
    - 'Ruby on Rails'
    - Turbo
---

I added [Hotwire](https://hotwire.dev/) to a [Ruby on Rails](https://rubyonrails.org/) application I've been working on and discovered some issues when rendering flash messages. Yesterday I [wrote about problems related to CORS error using OmniAuth](https://accidentaltechnologist.com/ruby-on-rails/hotwire-fix-for-cors-error-when-using-omniauth/). Today's is not as exciting but still as annoying.

## Problem

I was in the process of testing some validation changes I implemented and realized errors were not being displayed. I went through the typical debug scenarios and found that errors were being returned but just not displayed. The code consists of just trying to create a user:

```ruby
def create
  @user = User.new(user_params)
  if @user.save
    redirect_to root_path, notice: "User created successfully"
  else
    render :new
  end
end
```

When creating a user, the *new* form rendered but errors were not displayed.

## Solution

The reason the messages were not being displayed is because of [Turbo](https://turbo.hotwire.dev/) and Rails UJS conflicting. Solving the problem can be done in one of two ways:

1. It appears Turbo expects form submissions to redirect to a new location. When there is an error, we are staying on the same page. Adding `status: :unprocessable_entity` to the render fixes the problem:

```ruby
def create
  @user = User.new(user_params)
  if @user.save
    redirect_to root_path, notice: "User created successfully"
  else
    render :new, status: :unprocessable_entity 
  end
end
```

2. A similar solution from [yesterday's post](https://accidentaltechnologist.com/ruby-on-rails/hotwire-fix-for-cors-error-when-using-omniauth/) also works. Adding:

```erb
data: { turbo: false }
```

The form declaration disables turbo and lets Rails UJS handle as desired. I hope future versions of Turbo handle this better.