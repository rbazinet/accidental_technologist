---
id: 1584
title: 'Redis::CommandError - MISCONF Redis is configured to save RDB snapshots'
date: '2021-03-22T09:11:36-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1584'
permalink: /tips/rediscommanderror-misconf-redis-is-configured-to-save-rdb-snapshots/
categories:
    - Tips
tags:
    - redis
    - 'Ruby on Rails'
---

I recently ran into a problem I hadn't encountered before on my Mac. I was getting an error from Redis:

> MISCONF Redis is configured to save RDB snapshots, but it is currently not able to persist on disk. Commands that may modify the data set are disabled, because this instance is configured to report errors during writes if RDB snapshotting fails (stop-writes-on-bgsave-error option). Please check the Redis logs for details about the RDB error.

 The fix is simple. From a terminal window, enter the Redis CLI. From a terminal window type: ```
redis-cli
```

 Use the command: ```
config set stop-writes-on-bgsave-error no
```

 You should get an OK response, then type *exit* to get out of the reds-cli. Try again where you received the error and everything should be working as expected.