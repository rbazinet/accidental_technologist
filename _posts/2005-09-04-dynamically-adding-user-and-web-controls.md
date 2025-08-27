---
id: 21
title: 'Dynamically Adding User and Web Controls'
date: '2005-09-04T18:20:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=21'
permalink: /asp-net/dynamically-adding-user-and-web-controls/
dsq_thread_id:
    - '95923715'
categories:
    - ASP.NET
---

I often make use of user controls for my web applications. User controls are nice componentized chunks of HTML and .NET web controls combined and delivered as chunks of reusable code.

Much of the time these controls are dropped on a form much like using a server control. In my current project I had the pleasure of using user controls dynamically. Dynamically adding user controls to a form is a bit different than dynamically adding a standard server control.

**Dynamically adding a web control:**

<div>```
        public class WebForm1 : System.Web.UI.Page
```

 ```
        {
```

 ```
            // Added by hand; will create instance in OnInit.
```

 ```
            protected System.Web.UI.WebControls.TextBox TextBox1;
```

 ```
            protected System.Web.UI.WebControls.TextBox TextBox2;
```

 ```
 
```

 ```
            override protected void OnInit(EventArgs e)
```

 ```
            {
```

 ```
                // Create dynamic controls here.
```

 ```
                TextBox1 = new TextBox();
```

 ```
                TextBox1.ID = "TextBox1";
```

 ```
                Form1.Controls.Add(TextBox1);
```

 ```
 
```

 ```
                TextBox2 = new TextBox();
```

 ```
                TextBox2.ID = "TextBox2";
```

 ```
                Form1.Controls.Add(TextBox2);
```

 ```
            }        
```

 ```
        }
```

 ```
    }
```

</div>  
**Dynamically adding a user control:**

<div><div>```
        private void Page_Init(object sender, System.EventArgs e)
```

 ```
        {
```

 ```
            int index=0;
```

 ```
            foreach (ProgramOptInQuestion poq in poi.Questions)
```

 ```
            {
```

 ```
                TableRow r = new TableRow();
```

 ```
 
```

 ```
                // load the user control. 
```

 ```
                QuestionUI question = (QuestionUI)LoadControl@"~\Common\UserControls\Components\QuestionUI.ascx"); 
```

 ```
 
```

 ```
                // This table cell is run server-side and has a Control Collection associated with it.
```

 ```
                // Add the control to this collection.  
```

 ```
                // Could be done in the Page class but done here to allow for positioning.
```

 ```
                TableCell c = new TableCell();
```

 ```
                c.Controls.Add(question);
```

 ```
                r.Cells.Add(c);
```

 ```
 
```

 ```
                // append a new row to our table
```

 ```
                this.QuestionTable.Rows.Add(r);
```

 ```
            }
```

 ```
        }
```

</div>The purpose of this code is to iterate through a collection of questions and load each question dynamically.

</div>Notice the difference between the two pieces of code. Dynamically adding the user control requires the control to be loaded using the LoadControl method.

If you have never added web controls or user controls dynamically, it's worth noting that the controls are actually added in the OnInit() and added to the Controls collection of an object.

**Note** - we use the OnInit() to load each web and user control because the Page object has all it's controls added each time the page is rendered. The first example adds the Textbox controls to the Controls collection of the form object. The user controls are added to a cell that has the RunAt="Server" set and therefore has a Controls collection to work with. This is subtle, but a detail worth noting.