# Source local CSS in Sinatra

I was having trouble getting my local CSS "findable" to my Sinatra app.

Here's how to do it. 

## Seems to be necessary to put it in `/public`:

Add `public/style.css` 

```
> tree
.
├── Gemfile
├── Gemfile.lock
├── app.rb
├── config.ru
├── data
│   └── 20210124030110_4746.csv
├── public
│   └── style.css  # put your css here!
├── readme.md
└── views
    └── index.erb
```

then source from your `index.erb` like so:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    .
    .
    <title>A Baby Sinatra Application</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
```



### Resources

- [Referencing a CSS File in the HTML Head](https://stackoverflow.com/questions/21623368/referencing-a-css-file-in-the-html-head)