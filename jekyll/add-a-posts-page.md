# How To Add A List Of All Articles in Jekyll

So you've got entries in `_posts/`, and you want to make them visible somewhere...

You need to do a few things. (I want to call them "articles", not "posts", so... keep that in mind)

If you want this page to be visible in your nav bar, update `config.yml`
```yml
# pages across header
# seems to need `jekyll build` to catch updates on localhost
pages_list:
  about: '/about'
  articles: '/articles'
```

Now Jekyll will go look for an entry in `_/pages` with the title `articles.md`

Make sure that file exists, and add the MVP front-matter, like:

```
---
layout: default
title: Posts
permalink: /posts
---
```

Great! Now you've got a bare-bones "articles" page. 

Here's where I did the above steps:

[https://github.com/josh-works/intermediaterubycom/commit/cb08495fc0763f8603e0a0fba9ab9b10db4eb514](https://github.com/josh-works/intermediaterubycom/commit/cb08495fc0763f8603e0a0fba9ab9b10db4eb514)

Next, lets list all the articles. Right now we've got a rather uninspired page:

![boring](/images/articles-bare.jpg)