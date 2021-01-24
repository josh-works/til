# How to pass Variables in Sinatra through to HTML

```ruby
get '/' do
    @page_title = 'Home'
    @page_id = 'index.html'
    erb :'index.html', { :layout => :'layout.html' }
end
```