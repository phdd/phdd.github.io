---
title: Thunderbird Taiga Integration
description: Convert Thunderbirds mails to user stories, tasks and tickets for the Taiga project management system.

published: 2018-03-06
cover: bg.png

images:
  - bg.png
  - settings.png
  - ticket.png
  - token-screencast.gif

tags:
    - integration
    - thunderbird
    - taiga

categories:
  - Open Source Projects

aliases:
    - /post/thunderbird-taiga-integration/
    - /posts/thunderbird-taiga-integration-englisch/

---

As described in the _Getting Things Done_ methodology we have to cope with a large amount of incoming information; E-mails are outdated, but still heavily used.
They are trapped in our client software, only transferable by copy and paste.
Thus we need a way to import those into our favorite project management system to actually get things done.

Working with Taiga and Thunderbird for quite a while now, I managed to write a thunderbird extension for this very purpose. 
It converts Thunderbirds mails to user stories, tasks and tickets for the [Taiga project management system](https://taiga.io).
You can get the plugin at [thunderbird's addon repository](https://addons.mozilla.org/de/thunderbird/addon/thunderbird-taiga-integration/).
And if you like to contribute go to my the [GitHub repository](https://github.com/phdd/thunderbird-taiga-integration).
Those sources are licensed under the [Mozilla Public License, v. 2.0](http://mozilla.org/MPL/2.0/).

Please keep in mind, that this is an early version missing some of the aforementioned features.
When I get the time, it'll move forward. Another way is community contribution, obviously. 

## Usage

There are two ways to this addon. Right click on an E-mail and choose `Taiga` or select one and do likewise through `Message > Taiga`.
If any of the menu seems disabled, there might be something wrong with the addon's settings. 

### Authentication

The user authenticates with a token against any Taiga-instance.
There's an application token, especially for this addon's use-case, and a user token authenticating the user himself. 
Since Taiga's application token flow is rather unusable, authentication is done via the user's bearer-token.
To obtain this token, log in to your Taiga, open the developer console and get it from the application's local storage.
The following screencast illustrates this slightly hacky solution.

{{< figure src="token-screencast.gif" caption="Obtain User Token" >}}

## Appendix

### Contribution

Feel free to comment and give some feedback. For all the technical stuff, bug reports, pull requests, etc., please go to the 
[GitHub repository](https://github.com/phdd/thunderbird-taiga-integration) and **contribute**. 

### Screenshots

{{< figure src="settings.png" caption="Setup your Taiga instance" >}}

{{< figure src="ticket.png" caption="Create Taiga Ticket" >}}

### Features

| &nbsp;                     | Version | Dev. State           |
|----------------------------|---------|:---------------------|
| Message to Markdown        | _1.0_   | :full_moon:          |
| Watchers from E-mail       | _1.0_   | :full_moon:          |
| Upload attachments         | _1.0_   | :full_moon:          |
| German Translation         | _1.0_   | :full_moon:          |
| Wizard: create Issue       | _1.0_   | :full_moon:          |
| Wizard: create User-Story  | _2.0_   | :first_quarter_moon: |
| Wizard: create Task        | _3.0_   | :first_quarter_moon: |
| Wizard: Comment            | _4.0_   | :first_quarter_moon: |
| Wizard: Upload Attachments | _5.0_   | :first_quarter_moon: |
