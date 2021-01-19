# Set a description for a rake task:

Wrong: 

```ruby
task :new_draft, [:options] do |task, args|
  desc "create new draft with `rake \"new_draft['2020-wrapup']\"`"
  #
  #
  #
end
```

Right:

```ruby
desc "create new draft with `rake \"new_draft['2020-wrapup']\"`"

task :new_draft, [:options] do |task, args|
  content = NewDraftBuilder.new(args[:options]).content
  today = Date.today.to_s
  File.open("_drafts/#{today}-#{args[:options]}.md", "a") do |file|
    file.write(content)
  end
end
```
`rake -T`

```
rake new_draft[options]  # create new draft with `rake "new_draft['2020-wrapup']"`
```