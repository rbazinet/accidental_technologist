---
id: 499
title: 'Delete Large Numbers of Amazon S3 Files using Ruby'
date: '2010-09-28T10:18:52-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/ruby/delete-large-numbers-of-amazon-s3-files-using-ruby/'
permalink: /ruby/delete-large-numbers-of-amazon-s3-files-using-ruby/
dsq_thread_id:
    - '148177048'
categories:
    - Ruby
tags:
    - 'Amazon S3'
    - Ruby
    - S3Nukem
---

I recently found I problem I needed to solve; remove hundreds of thousands of files from [Amazon S3](http://aws.amazon.com/s3/). I mean, it had to be a common problem, right? Well, it certainly be a common problem but the solution was less than common.

I tried a few tools available, both the tool from the Amazon S3 site but it keep erroring out and I was never sure why. I then went to third-party tools used for managing S3 buckets but their either errored-out or behaved as if they worked but later determined did nothing.

I posted my need on Twitter and was pointed to a solution (thanks [@Kishfy](http://twitter.com/Kishfy/)) I had not thought of, use Ruby. There is a great open-source [project named S3Nukem](http://github.com/lathanh/s3nukem) which its sole purpose is to remove Amazon S3 buckets.

### S3Nukem

This is an open source project hosted on Github. Installation and setup is pretty simple (from the Github repo readme), install required gems.

#### For Ruby &gt;= 1.9:

> `sudo gem install dmarkow-right_aws --source <a href="http://gems.github.com">http://gems.github.com</a>`

The docs don?t mention it but I needed to install the right\_http\_connection gem, the above command fails unless it is installed.

#### For Ruby &lt; 1.9:

> `sudo gem install right_aws`

#### Install S3Nukum:

> `curl -O <a href="http://github.com/lathanh/s3nukem/raw/master/s3nukem">http://github.com/lathanh/s3nukem/raw/master/s3nukem</a>`

#### Make it executable:

> `chmod 755 s3nukem`

This is done in the directory where the above curl command was executed from.

#### Usage:

> `     <p>Usage: ./s3nukem [options] buckets... </p>      <p>Options:        <br></br>    -a, --access ACCESS              Amazon Access Key (required)         <br></br>    -s, --secret SECRET              Amazon Secret Key (required)         <br></br>    -t, --threads COUNT              Number of simultaneous threads (default 10)         <br></br>    -h, --help                       Show this message</p>   `

Running the application in a terminal window shows large numbers of files being deleted:

[![s3nukem](/assets/img/2010/09/s3nukem_thumb.png "s3nukem")](/assets/img/2010/09/s3nukem.png)

This script is fast. I tried running this under both Ruby 1.8.7 and 1.9.2 with 1.9.2 quite a bit faster. I didn?t run any benchmarks but it was noticeably faster, my goal was really to just delete large amounts of files. Ruby 1.9.2 thread handling really shines here and with the ability to control the number threads from the command line, is really nice.

The nice thing about this script version is the cap on the number of items to be deleted each time, 1000 \* thread\_count, which defaults to 10. With this limit in place the script won?t chew up all your system memory.

This script is designed to delete an entire bucket but could be modified to just remove the content or a directory tree within the bucket. I may do this for a project I am working which has a need for such functionality.