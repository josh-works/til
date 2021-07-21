# VCR Setup, Tips, and Tricks

```ruby
# Gemfile
group :test do
  gem "vcr"
end
```

```ruby
# test/test_helper.rb
VCR.configure do |config|
  config.cassette_library_dir = "fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.ignore_localhost = true
  config.debug_logger = $stderr # don't commit this LOC
end
```
### Resources

- [VCR's debug_logger and `git diff` (Josh.works)](https://josh.works/vcr-debug-logger-and-git-diff)