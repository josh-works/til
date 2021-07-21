# Environment Variables

Sometimes in a python script, you'll see:

```
token = os.environ["STRAVA_TOKEN"]
```
Or a related line in Ruby:

```ruby
ENV["test-key"] = 'test-value'
```

What's this stuff?

In your shell (I'm using `zsh`) run each of the following, observe/meditate upon each of the following results, and see if you can follow my "line of reasoning" for each successive command. (I'm wobbly on terminal things _at best_, so someone who's comfortable with all this won't struggle as much as I might.)

```
> printenv
> PRINTENV
> printenv["RUBY_VERSION"]
> echo $PATH
> echo $PATH | tr "\n" "\\n"
> tldr tr
> echo $PATH | tr ":" "\\n"
> export ['test-variable]='test-value'
> export ['test-variable']='test-value'
> export test-variable='test-value'
> export testvariable='testvalue'
> echo $TESTVARIABLE
> echo $testvariable
> printenv
export $STRAVA_TOKEN="14de41df2c8da2fcf88f7340cd62d5f0d9c97cfe"
```