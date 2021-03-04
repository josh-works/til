# Parameterize Strings

First, the [String#parameterize](https://www.rubydoc.info/gems/activesupport/5.0.0.1/String:parameterize) method is an ActiveSupport method. It's not available by default to Ruby.

I tried:

```ruby
require 'active_support'
```

and `parameterize` was still unavailable. I found [trying to require active_support in gem](https://stackoverflow.com/questions/18732338/trying-to-require-active-support-in-gem), and the [top answer](https://stackoverflow.com/a/18734988/3210178) said:

> You need to `require` the methods you need from `ActiveSupport`; they aren't added by default.
> 
> Like Yevgeniy mentions in a comment, the way to do this is `require "active_support/all"` if you need everything - or if you for example want only the Hash extensions use `require 'active_support/core_ext/hash'`

So, cool! I added:

```ruby
require 'active_support/core_ext/string/inflections'
```

And it was working!

Next, the _default_ parameterize separator is `-`, but a symbol cannot have dashes, it must be underscored:

```ruby
:josh_thompson # valid
:josh-thompson # invalid
```

If I tried to symbolify the bottom option, I'd get `:"josh-thompson"`, which is bad.

So, want to make strings valid symbols, universally?

```ruby
"SUPER strange String".downcase.parameterize(separator: '_').to_sym
=> :super_strange_string
```

Good to go.