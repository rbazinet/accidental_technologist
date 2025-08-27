---
id: 1245
title: 'Fixing StaleElementReferenceError When Using Capybara'
date: '2018-12-04T13:52:10-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1245'
permalink: /ruby-on-rails/fixing-staleelementreferenceerror-when-using-capybara/
categories:
    - 'Ruby on Rails'
tags:
    - capybara
    - 'Ruby on Rails'
    - selenium
---

I’ve been spending an extended period of time lately writing Feature specs for a Ruby on Rails project using Capybara. Overall it’s been a fun project to work on but I had run into a few issues along the way. One in particular is the StaleElementReferenceError exception that get thrown when you are trying to find an element on your page that you know is there but Selenium can no longer find. The error appears to be a timing issue between the page loaded in the browser, it being rendered and Capybara and Selenium trying to find the element. After much trial and error, along with many Google searches, I found no solutions that were reasonable. Even though many people had the same problem. The solution was pretty simple actually. I added a rescue to my test and simply slept for 1 second and retry the failure. I admit, this seems like a hack but it works and that's all I really cared about at the time. I see no ill effects from this, no measurable delay.

```
RSpec.feature "Listings", type: :feature, js: true do
  scenario "can edit common area - step 3" do
    begin
      post_a_space_step_1_with
      click_on 'Next'
      post_a_space_step_2_with
      click_on 'Next'
      click_on 'Edit Common Area'
      expect(page).to have_content "Step 1"
    rescue Selenium::WebDriver::Error::StaleElementReferenceError
      sleep 1
      retry
    end
  end
end
```

 I'm certainly open to a better solution or an explanation as to why this might be bad. Please leave comments. Hopefully I help someone get around this really annoying problem.