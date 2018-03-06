+++
date = 2018-03-06
lastmod = 2018-03-06
draft = false
tags = ["software", "thunderbird", "taiga"]
title = "Thunderbird Taiga Integration"
math = true
summary = """
Convert Thunderbirds mails to user stories, tasks and tickets for the Taiga project management system.
"""

[header]
image = "thunderbird-taiga-integration/bg.png"
caption = "Image credit: [**Taiga.io**](https://tree.taiga.io/)"

+++

Like described in the _Getting Things Done_ methodology we have to cope with a large amount of incoming information and E-mails are outdated, but still heavily used. They are trapped in our client software, only transferable by copy and paste. Thus we need a way to import those into our favorite project management system to actually get things done. Working with Taiga and Thunderbird for quite a while now, I managed to write a thunderbird extension for this very purpose. 

It converts Thunderbirds mails to user stories, tasks and tickets for the [Taiga project management system](https://taiga.io).
You can get the plugin at [thunderbird's addon repository](https://addons.mozilla.org/de/thunderbird/addon/thunderbird-taiga-integration/).
And if you like to contribute go to my the [GitHub repository](https://github.com/phdd/thunderbird-taiga-integration).
Those sources are licensed under the [Mozilla Public
License, v. 2.0](http://mozilla.org/MPL/2.0/).

## Token Authentication

Since Taiga's application token flow is unusable, authentication is done via the user's Bearer-Token.
To obtain this token open the developer console and get it from the application's local storage.
The following screencast illustrates this slightly hacky solution.

![Obtain User Token](/img/thunderbird-taiga-integration/token-screencast.gif)
