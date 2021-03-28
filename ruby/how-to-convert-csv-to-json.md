# How To Convert CSV to JSON

Take a CSV, read it in:

```ruby
read csv.each do |row|
  row.to_json # not exactly but close
end
```

https://stackoverflow.com/questions/31868305/how-can-i-convert-this-csv-to-json-with-ruby