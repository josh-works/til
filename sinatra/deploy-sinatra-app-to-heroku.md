# Deploy a Sinatra App to Heroku

I remember futzing around getting Heroku hooked up to my terminal, it was a bit of a hassle, but eventually:

```shell
heroku create baby-sinatra-app # creates new app named `baby-sinatra-app`
heroku open # opens your new heroku page
```

Tail the logs:

```shell
heroku logs --tail
```
Make sure to have:

```ruby
# Gemfile
source 'https://rubygems.org'
ruby "2.6.6"

gem 'sinatra'
gem 'json'
```
Create `config.ru`, add:
```
# config.ru
require './app'
run Sinatra::Application
```
```
git push heroku main
```

Got some ugly errors, debug with:

![heroku failed](/images/heroku-build-failed.jpg)

### Resources

- [Creating Apps from the CLI](https://devcenter.heroku.com/articles/creating-apps)
- [“No Procfile detected” in Sinatra app heroku push (StackOverflow)](https://stackoverflow.com/questions/24223476/no-procfile-detected-in-sinatra-app-heroku-push)