# How To Open A Specific Gem In A Specific Editor

As long as the gem is in your `Gemfile` or `Gemfile.lock`, you can use:

`bundle open <gem_name>`

It'll open it in your "bundle editor". I don't want `mvim`, though, or `vim`, or `nano`, or `vi`, I want Atom. Two options:

1. one-off fix: `EDITOR=atom bundle open pry`
2. permanent fix: `export EDITOR='atom'`

### Further Reading

- [Exploring source code via Griddler and Griddler-Mailgun](https://josh.works/exploring-source-code-via-griddler-and-griddler-mailgun)
- [Setting 'EDITOR' or 'BUNDLER_EDITOR' environment variable](https://stackoverflow.com/questions/25084035/setting-editor-or-bundler-editor-environment-variable)
- [Commit Tracing (intermediateruby.com)](https://intermediateruby.com/commit-tracing-in-pry)