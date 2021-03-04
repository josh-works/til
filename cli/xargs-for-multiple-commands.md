# `xargs` for multiple commands

You can use `xargs` in many useful ways.

Install `tldr`, run `tldr xargs`.

Here's how I use it:

```
git diff <commit> --name-only | xargs atom
```

Or in aliases:
```
alias jekyll_server="lsof -t -i :4000 | xargs kill && bundle exec jekyll serve --drafts --incremental"
alias run_all_ruby_tests="find ./test -name '*_test.rb' | xargs -n1 ruby"
```

It grabs the output of the prior commands, and passes it in specific ways to whatever comes after `xargs`, like `kill`, or `ruby`, etc.