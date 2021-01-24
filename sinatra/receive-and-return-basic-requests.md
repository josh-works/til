# How to receive and return basic requests

## JSON and Query Params

```ruby
get '/?' do
  # require "pry"; binding.pry
  # request.path_info   # => '/hello-world'
  # request.fullpath    # => '/hello-world?foo=bar'
  # request.url         # => 'http://example.com/hello-world?foo=bar'
  response = {
    given_query_params: request.env["QUERY_STRING"],
    HTTP_USER_AGENT: request.env["HTTP_USER_AGENT"],
    request_path_info: request.path_info,
    # request_fullpath: request.full_path,
    request_url: request.url
  }
  response.to_json
end
```

## HTML

```ruby
get '/?' do
  File.read('index.html')
  # returns any HTML in said document
end
```

### MVP HTML Document

Here's what I'm using:

- New.css
- that's it

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
    Its a Starter!
  </header>
    <h1>Hello, world. I'm a baby sinatra application</h1>
</body>
</html>
```