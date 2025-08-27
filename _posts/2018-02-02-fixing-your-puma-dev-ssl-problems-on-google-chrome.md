---
id: 1187
title: 'Fixing Your Puma-dev SSL Problems on Google Chrome'
date: '2018-02-02T07:12:09-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1187'
permalink: /ruby-on-rails/fixing-your-puma-dev-ssl-problems-on-google-chrome/
dsq_thread_id:
    - '6454584668'
categories:
    - 'Ruby on Rails'
tags:
    - Chrome
    - Firefox
    - Puma-dev
    - 'Ruby on Rails'
---

Ruby on Rails developers have it made in many ways. We rely on and take advantage of great software created by the community. [Puma-dev](https://github.com/puma/puma-dev) is just one of those great pieces of software. Puma-dev has some nice improvements over Pow, which Basecamp had promoted for years but has seemed to stop development. Puma-dev allows developers to better mirror their local development environment to that of production. Prior to Puma-dev or Pow, developer would have to access their Ruby on Rails applications with something like localhost:3000 in their browsers. It works but having a real URL to visit, like mygreatapp.dev is better. This worked well until a [recent update to Google's Chrome browser](https://ma.ttias.be/chrome-force-dev-domains-https-via-preloaded-hsts/):

> A lot of (web) developers use a local.dev TLD for their own development. Either by adding records to their/etc/hosts file or by using a system like Laravel Valet, which runs a dnsmasq service on your system to translate \*.dev to 127.0.0.1. In those cases, if you browse to http://site.dev, you'll be redirect to https://site.dev, the HTTPS variant. That means your local development machine needs to; - Be able to serve HTTPs
> - Have self-signed certificates in place to handle that
> - Have that self-signed certificate added to your local trust store (you can't dismiss self-signed certificates with HSTS, they need to be 'trusted' by your computer)

 I've faced this myself and Chrome refuses to serve the site, only showing security errors. When trying to fix this problem I search a lot around the web and came up with very little. There were plenty of acknowledgements that since .dev is now a top-level domain (TLD) and Chrome 63 treats it as such and forces SSL, it looked like moving away from .dev would be needed. This was my assumption until I discovered a [recent post from Barry Woolgar of Storm](https://stormconsultancy.co.uk/blog/development/ruby-on-rails/switching-pow-puma-rails-development/) demonstrating setting up Puma-dev. He addresses troubleshooting .dev TLD issues specifically: > If your browser complains about an untrusted root certificate, please do the following: 1. Open Keychain Access
> 2. Click the login keychain in the left pane, then find the Puma-dev CA certificate in the right pane
> 3. Double-click it and expand the Trust section, and make sure it says Always Trust
> 4. Drag it into the System keychain in the left pane
> 5. Restart your computer
> 6. Try https://my-project.dev again!

 Although I didn't need to restart my Mac, this worked perfectly! I can now serve .dev domains in Chrome and latest Firefox.