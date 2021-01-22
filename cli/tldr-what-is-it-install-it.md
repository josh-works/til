# `tldr`: command line summaries


I love TLDR:

[https://github.com/tldr-pages/tldr](https://github.com/tldr-pages/tldr)

It stands for "too long;didn't read" and gives you lovely summaries of all sorts of terminal commands.

Here's it's summary for `lsof`:

![lsof summary](/images/tldr-lsof.jpg)

Compare the above summary to looking at the actual built-in manual for `lsof` (aka: `$ man lsof`:)

![man lsof](/images/man_lsof.jpg)


## Installation

The docs are surprisingly confusing. Mac (what many people might be using) is technically a `c` client, so look at the installation instructions for the `C` client:

[https://github.com/tldr-pages/tldr#how-do-i-use-it](https://github.com/tldr-pages/tldr#how-do-i-use-it)

basically:

```
brew install tldr
```

now you can type `tldr <anything>`, for starters try:

```
tldr man
tldr cd
tldr rm
tldr git add
tldr ruby
```



