# How to serve random (or almost random) data

Head to [http://randat.com/](http://randat.com/), generate random data by checking various boxes, and exporting as CSV:

Here's how I generated some data:

![generate random data](/images/generate-random-data.jpg)

Download the CSV, drag it into a `/data` directory in Sinatra:

TODO: Add screenshot

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


### Resources

- [http://randat.com/](http://randat.com/) Free random data generator