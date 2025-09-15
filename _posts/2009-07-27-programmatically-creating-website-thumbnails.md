---
id: 369
title: 'Programmatically Creating Website Thumbnails'
date: '2009-07-27T08:41:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=369'
permalink: /ruby/programmatically-creating-website-thumbnails/
dsq_thread_id:
    - '95925305'
categories:
    - Ruby
---

I have been working recently on a project which I am capturing links to web pages and need to display a thumbnail-size screen shot of the web page being linked. For example, if I have a link to the [Ruby on Rails web site](https://rubyonrails.org/), the thumbnail I need would look like this:

[![rubyonrails_thumb](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/DisplayingDynamicScreenShots_8E49/rubyonrails_thumb_thumb.jpg "rubyonrails_thumb")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/DisplayingDynamicScreenShots_8E49/rubyonrails_thumb_2.jpg)

This particular one is 202x152 pixels, just the size I need.

I was really surprised by the level of difficulty I had trying to find such a solution and searching the web led to very little. It appears Amazon had such a solution at one time under the Alexa umbrella called [Alex Site Thumbnail](https://aws.amazon.com/ast/) but they shut the service down a while ago. There happened to be a very nice Ruby interface to the Alexa service as well.

I ended up coming across a couple viable and workable solutions, [Websnapr](https://www.websnapr.com/) and [Bluga.net](https://webthumb.bluga.net/home).

### Websnapr

It is a web service which is pretty simple to implement and in its simplest form can just be referenced from an `img` tag from a web page. My implementation uses Ruby on Rails but it's not needed to see a very simple example. Taking the URL I want a screen image of from above:

`<img src=”https://images.websnapr.com/?size=S&key=mywebsnaprkey&url=rubyonrails.org” />`

The web service will allow for snapshots to be made without the API key but limits to 80 requests per hour, which is reasonable. The service also seems to cache previously requested snapshots taken from other users. The normal process when requesting a snapshot is a temporary image is returned while the request is in the queue, but if there is already one available it is returned immediately.

My tests have shown the resulting image being returned in less than a minute.

### Bluga.net WebThumb

The other thumbnail service under consideration uses a different approach to the submission and retrieval of images, both thumbnail and full-size website snapshots. Their approach is much more flexible but can be bit more complex.

> WebThumb offers more [features](https://webthumb.bluga.net/features) and quicker response times then any other service.
> 
> - Real-time thumbnails
> - Flash 10 Support
> - PDF Support
> - Quick response times
> - [REST API](https://webthumb.bluga.net/api)
> - [API clients](https://webthumb.bluga.net/wrappers) for [PHP](https://webthumb.bluga.net/wrapper-php-), [Ruby](https://webthumb.bluga.net/wrapper-ruby), [Python](https://webthumb.bluga.net/wrapper-python)
> - Cache the thumbnails on your server or [Webthumbs](https://webthumb.bluga.net/api-easythumb)
> - Browser windows from 75x75 to 1280x2048

Bluga offers a [gem hosted on Github](https://github.com/simplificator/rwebthumb/tree/master) for Ruby developers to interface to their web service, simply wrapping the API calls in some nice objects.

One problem I saw with simply using the gem was when requesting a snapshot that it might not be ready right away and would through an exception, which we need to code. Not a huge problem but to be aware of. [Peter Cooper](https://www.petercooper.co.uk/) posted some [code at DZone which shows his implementation using the Bluga service](https://snippets.dzone.com/posts/show/3621):

> ```ruby
> require 'net/http'
> require 'rubygems'
> require 'xmlsimple'
> 
> class Nailer
>   @@api_baseurl = 'https://webthumb.bluga.net/api.php'
>   @@api_key = 'PUT YOUR API KEY HERE'
>   attr_accessor :collection_time, :job_id, :ok
> 
>   def initialize(url, width = 1024, height = 768)
>     api_request = %Q{<webthumb><apikey>#{@@api_key}</apikey><request><url>#{url}</url><width>#{width}</width><height>#{height}</height></request></webthumb>}
>     result = do_request(api_request)
>     if result.class == Net::HTTPOK
>       result_data = XmlSimple.xml_in(result.body)
>       @job_id = result_data['jobs'].first['job'].first['content']
>       @collection_time = Time.now.to_i + result_data['jobs'].first['job'].first['estimate'].to_i
>       @ok = true
>     else
>       @ok = false
>     end
>   end
> 
>   def retrieve(size = :small)
>     api_request = %Q{<webthumb><apikey>#{@@api_key}</apikey><fetch><job>#{@job_id}</job><size>#{size.to_s}</size></fetch></webthumb>}
>     result = do_request(api_request)
>     result.body
>   end
> 
>   def retrieve_to_file(filename, size = :small)
>     File.new(filename, 'w+').write(retrieve(size.to_s))
>   end
> 
>   def ready?
>     return unless Time.now.to_i >= @collection_time
>     api_request = %Q{<webthumb><apikey>#{@@api_key}</apikey><status><job>#{@job_id}</job></status></webthumb>}
>     result = do_request(api_request)
>     if result.class == Net::HTTPOK
>       @ok = true
>       result_data = XmlSimple.xml_in(result.body)
>       begin
>         @result_url = result_data['jobStatus'].first['status'].first['pickup']
>         @completion_time = result_data['jobStatus'].first['status'].first['completionTime']
>       rescue
>         @collection_time += 60
>         return false
>       end
>     else
>       @ok = false
>     end
>     true
>   end
> 
>   def ok?
>     @ok == true
>   end
> 
>   def wait_until_ready
>     sleep 1 until ready?
>   end
> 
>   private
> 
>   def do_request(body)
>     api_url = URI.parse(@@api_baseurl)
>     request = Net::HTTP::Post.new(api_url.path)
>     request.body = body
>     Net::HTTP.new(api_url.host, api_url.port).start {|h| h.request(request) }
>   end
> end
> 
> url = 'https://www.rubyinside.com/'
> t = Nailer.new(url)
> if t.ok?
>   t.wait_until_ready
>   t.retrieve_to_file('out1.jpg', :small)
>   t.retrieve_to_file('out2.jpg', :medium)
>   t.retrieve_to_file('out3.jpg', :medium2)
>   t.retrieve_to_file('out4.jpg', :large)
>   puts "Thumbnails saved"
> else
>   puts "Error"
> end
> ```

You can see from the example there are some things to take into consideration which might lead taking longer to implement. Bluga does offer an [Easythumb API](https://webthumb.bluga.net/api-easythumb) which looks very similar to Websnapr but gives the option of cached and non-cached snapshots, which may likely be important.

As I indicated Bluga has some good support for developers including a well-documented API, code samples in multiple languages and article references so you can see how others are using the service to solve their problems. Bluga is also hosted on EC2 so the uptime should be really good.

### Finally

The solution I am currently using for this project works well but relies on a third-party service, which I would like to avoid. If someone has a solution, preferably in Ruby natively or Ruby interfacing to some Linux libraries or tools, **I would really like to hear about it**.

For now the solution with Websnapr works very well, although not instantaneous, is pretty fast. I good part of this approach is not having to store images and the drawback being I am not storing images. If Websnapr goes down, no images are displayed.

After finding these two solutions I came across some others that might do the job but haven’t had a reason to investigate; [Shrink the Web](https://www.shrinktheweb.com/), [Girafa](https://www.girafa.com/), [PageGlimpse](https://www.pageglimpse.com/) and [scURLr](https://www.scurlr.com/com.boxysystems.scurlr.Main/Main.html).

Most of the services have a component you need to pay for beyond an initial free hits to the service. In the long-term Bluga seems to be a really good solution because of the flexibility and being host on Amazon EC2 but for a short-term solution it is hard to be Websnapr.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:6e4891b0-9100-479a-92d9-099dd1653b9e" style="margin: 0px; padding: 0px; display: inline; float: none;">Technorati Tags: [Ruby](https://technorati.com/tags/Ruby),[Thumbnail](https://technorati.com/tags/Thumbnail),[websnapr](https://technorati.com/tags/websnapr),[bluga](https://technorati.com/tags/bluga)</div>