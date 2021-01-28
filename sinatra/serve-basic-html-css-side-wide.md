# How to serve/style Sinatra site-wide

MVP styling using [new.css](https://newcss.net/)

```ruby
get '/myspecialroute' do
  File.read('myhtmlfile.html')
end
```

or:

```ruby
get '/myspecialroute' do
  send_file 'myhtmlfile.html'
end
```

### To use embedded Ruby (you'll want to soon):

```ruby
get '/' do
  erb :index, locals: {message: "Hi there!"}
  # this looks for `views/index.erb`
end
```

Then, in `views/index.erb`, use something like:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://fonts.xz.style/serve/inter.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@exampledev/new.css@1.1.2/new.min.css">

</head>
<body>
  <header>
    A Baby Sinatra Application
  </header>
    <h1>This line of text should be punchy and exciting!</h1>
    <p>My super secret message:</p>
    <div class="">
      <%= @message %>
    </div>

    
    <br>
    <footer style="font-size:small;">
      <ul style="">
        <li>Built with ❤ by <a href="https://twitter.com/josh_works">Josh Thompson</a></li>
        <li>A Sinatra learning Project from <a href="https://intermediateruby.com/sinatra-basics">Intermediate Ruby</a></li>
        <li>A few today-i-learned entries for this project: <a href="https://github.com/josh-works/til/tree/main/sinatra">til/sinatra</a></li>
      </ul>
    </footer>
</body>
</html>
```




### Resources

- [How to render a plain HTML file with Sinatra? (StackOverflow)](https://stackoverflow.com/questions/7997081/how-to-render-a-plain-html-file-with-sinatra)
- [Serving static files with Sinatra (StackOverflow)](https://stackoverflow.com/questions/2437390/serving-static-files-with-sinatra)