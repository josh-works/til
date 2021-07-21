# Copy-paste minitest setup

Because I'm always forgetting...

```ruby
require 'minitest/autorun' 
require 'file_under_test'


class ClassTest < Minitest::Test
  def test_it_does_stuff
  end
end
```