```ruby
# config/routes.rb
get 'activity/show'
```

would let me visit `/activity/show`, but not `/activity/3`, or `/activity/show/3` . I obviously need the former.

```ruby
# config/routes.rb
get 'activity/:id', as 'activity#show'
```