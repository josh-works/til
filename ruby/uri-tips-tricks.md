# Class: `URI` tips/tricks

require 'uri' and use it on strings:

```ruby
> url = URI.parse("example.com")
=> #<URI::Generic example.com>

full_url = URI.parse("https://josh.works")
=> #<URI::HTTPS https://josh.works>

insecure_url = URI.parse("http://josh.works")
=> #<URI::HTTP http://josh.works>
```

OK, so to ensure I've got something at the end:

```ruby
def process_url(url)
  url = URI.parse(url.strip)
  case url
  when URI::Generic
    # add https:// if doesn't start with it?
    "https://" + url.to_s
  end
  url
end
```