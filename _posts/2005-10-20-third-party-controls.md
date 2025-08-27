---
id: 28
title: 'Third Party Controls'
date: '2005-10-20T14:55:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=28'
permalink: /programming/third-party-controls/
categories:
    - Programming
---

I am not a big fan of third party controls. Our company uses a variety of controls from various vendors and it always seems there is one problem or another with them. My complaints very from the complexity of the controls, lack of documentation and lack of good support.

I really wish Microsoft would just build enough into Visual Studio so developers don't have to deal so much with third party control vendors.

We use controls from ActiveUp. They have a set of controls for doing ordered list boxes and various data entry controls. We started using them last spring and have had one issue after another. Our problems start with textboxes that don't respond to and Enable flag to an ordered listbox with no way to return the currently selected item. Contacting the developer reveals these problems were fixed but after upgrading and almost 3 months of trouble the problems still exist. It seems to me that writing out our controls would have been cheaper in the long run.

Another set of controls that I have little use for is the suite from Telerik. I don't see how a company can release a product, charge $1000 per developer and not supply documentation that is of any use. After using these controls for 8 months or so I dread every minute I need to use these controls. The lack of documentation is really frustration as well as the frequent updates or hotfixes as they are called by Telerik. These controls have a lot of features but if the documentation is weak at best, then what good are they.

We also use the Validation and More Controls from [Peter Blum](http://www.peterblum.com/). These controls work as advertised and have THE best documentation you can imagine. We recently upgraded to the most recent version of Peter's VAM controls and experienced some difficulty in setting up the controls and their license files. A couple emails to support got a very fast reply and the fix to our problems. Peter agreed the part of the documentation was not as clear as it could be and was modified on our request. This is what I call service and revives a bit of my willingness to use third party controls.

We have used Peter Blum controls for over a year now and they just work, period.