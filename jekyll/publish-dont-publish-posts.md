# How to manage published/not-published posts

Two primary means of keeping posts from being published, at the end of the day:

## Any post in `_/drafts` won't get published

## A post in `_posts` WILL be published unless...

you have `published: false` in the frontmatter:

```yml
# _posts/2021-01-22-email-in-rails-basics.md
---
layout: post
title:  "Guiding Principles"
published: false  # not going to be published
description: ""
date:  2020-01-31 06:00:00 -0700
categories: []
tags: []
permalink: simple-email-in-rails-localhost-mailcatcher
image: /images/title_image.jpg
---
```

This post will not be published.