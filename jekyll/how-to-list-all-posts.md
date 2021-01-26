# How to list all posts

I've got this:

![boring](/images/articles-bare.jpg)

and instead I want all the articles in my `_/posts` directory to be listed.

Something like:

```
## All Articles

{% for post in site.posts %}
  * [ {{ post.title }} ]({{ post.url }}) <time class="archive-date">{{ post.date | date: '%b %Y' }}</time>
{% endfor %}

```

And we're good to go:


### Resources/extensions

- [How to list your jekyll posts by tags](https://www.jokecamp.com/blog/listing-jekyll-posts-by-tag/)