# Boot into different environments

I sometimes like to spot-check "prod" environments, because I have posts in a "draft" environment, and don't want them published.

```
jekyll server JEKYLL_ENV=production
jekyll server JEKYLL_ENV=development
```

Development mode gives a few different things:

1. Any post in `_drafts/` gets "posted", locally.
2. Any post in `_posts/` gets "posted", even if in the front matter you have:

```
---
.
published: false
.
---
```



### Resources

- [Jekyll Configuration Options](https://jekyllrb.com/docs/configuration/options/)