# Minimum steps to get a running Sinatra app:

MVP sinatra setup:

```shell
$ mkdir sinatra-starter
$ cd sinatra-starter
$ touch app.rb
```

Inside of `app.rb` add:

```ruby
require 'sinatra'

get '/' do
  "hi"
end
```

Install `sinatra` if you have not: `gem install sinatra`

Start the Sinatra server with: `ruby app.rb` (Basically, tell ruby to run the file with the `require` statement, and the `get '/'` do) block...

Open up [localhost:4567](localhost:4567) and you should see:

![sinatra running](/images/sinatra-running.jpg)

and re-run with `ruby app.rb`

ooor... use `rerun` (an app), easier than what Sinatra's docs recommend:

```
$ gem install rerun
$ rerun app.rb
```

super clean.

```ruby
require 'sinatra'
require 'json'

get '/' do
  require "pry"; binding.pry
  JSON.generate(foo: "hi hello")
end
```
