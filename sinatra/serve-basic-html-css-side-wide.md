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
  erb :index
  # this looks for `views/index.erb`
end
```




### Resources

- [How to render a plain HTML file with Sinatra? (StackOverflow)](https://stackoverflow.com/questions/7997081/how-to-render-a-plain-html-file-with-sinatra)
- [Serving static files with Sinatra (StackOverflow)](https://stackoverflow.com/questions/2437390/serving-static-files-with-sinatra)