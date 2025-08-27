---
id: 1487
title: 'Supporting Multiple SSH Keys on macOS'
date: '2020-04-03T09:33:09-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1487'
permalink: /mac/supporting-multiple-ssh-keys-on-macos/
categories:
    - Mac
tags:
    - macOS
    - 'ssh keys'
---

If you're a developer, on devops or a system admin you probably use an SSH key to log into remote servers. I am typically on multiple projects at one time and some organizations require I generate a unique SSH key in order to work with them. I've been fortunate until recently that my personal SSH key was acceptable. So, how can you have two or more SSH keys available on your system at any one time? I am running a Mac but I assume this would work on Linux as well. It's not hard and when setup, it works really well.

## Getting Started

 The first part is generate a new SSH key. Understand that the email you're using here may be an email provided by you client or company. It may not be the email you normally use. ```
ssh-keygen -t rsa -b 4096 -C "rob@example.com"
```

 There are a few different types of keys you can generate. If you're interested, [GitHub has some good help with SSH keys](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh). ```
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/rbazinet/.ssh/id_rsa): example_com_id_rsa
```

 I use something specific to the company for who I'm adding the key. You can see here the new SSH key is example\_com\_id\_rsa. Please be careful here, if you leave the default you may overwrite your existing key. You probably don't want to do that. ## The Key is the Config

 Head on over to where your SSH keys are stored, probably in ~/.ssh directory. Edit the config file, simple called config. It probably looks like mine: ```
Host *
AddKeysToAgent yes
UseKeychain yes
IdentityFile ~/.ssh/id_rsa
```

 Add your additional host. I added mine above the original. ```
Host git.example.com
Preferredauthentications publickey
IdentityFile ~/.ssh/example_com_id_rsa
Host *
AddKeysToAgent yes
UseKeychain yes
IdentityFile ~/.ssh/id_rsa
```

 The host is the system you need access to. It could be a git server or some other resource. Wildcards work here so if you need to access all resources on s particular domain, you would handle that here. There are a lot of things you can do in the config file and way you do them varies in complexity. If you want a more detailed explanation, [Digital Ocean has a good resource](https://www.digitalocean.com/community/tutorials/how-to-configure-custom-connection-options-for-your-ssh-client). I hope this helps.