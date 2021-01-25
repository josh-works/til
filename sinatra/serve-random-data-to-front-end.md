# How to serve random (or almost random) data

Head to [http://randat.com/](http://randat.com/), generate random data by checking various boxes, and exporting as CSV:

Here's how I generated some data:

![generate random data](/images/generate-random-data.jpg)

Download the CSV, drag it into a `/data` directory in Sinatra:

![data in app](/images/loading-data-in-app.jpg)

Read/sample it in the front-end:
```ruby
get '/' do
  url = get_random_url
  erb :layout, locals: { random_url: url}
end

private

def get_random_url
  doc = File.new("./links.txt", 'r').read
  random_link = doc.split.sample
  return random_link
end
```

Alternatively:

```ruby
get '/?' do
  @random_row = get_random_row
  erb :index, locals: { random_row: @random_row }
end

def get_random_row
  file = File.open('data/20210124030110_4746.csv')
  lines = file.readlines
  lines.sample
end
```

And in the `index.erb`, have:

```html
<div class="">
  <%= @random_row %>
</div>
```

Here's the results:

![data in fe](/images/data-in-front-end.jpg)

### Resources

- [http://randat.com/](http://randat.com/) Free random data generator