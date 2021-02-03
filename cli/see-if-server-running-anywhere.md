# How to see if there's a Jekyll server running somewhere

As part of a normal day, I run two different Jekyll servers.

I often try to start one server while the other one is running elsewhere. 

Inspired by [Bash function for switching asdf postgres versions and stopping/starting servers](https://gist.github.com/jbranchaud/3cda6be6e1dc69c6f55435a387018dac)

I'm going to build a similar bash/zsh function to start a jekyll server, but if it detects one running elsewhere, stop that server.

The way we'll `detect one running elsewhere` is really "check to see what's running on `port 4000`"

```
> lsof -i :4000
COMMAND   PID         USER   FD   TYPE            DEVICE SIZE/OFF NODE NAME
ruby    43396 joshthompson    7u  IPv4 0x1b3a23e9b0d93af      0t0  TCP localhost:terabase (LISTEN)
```

oooh, `lsof` has more options. the `-t` flag returns _just_ the PID.

```
lsof -t -i :4000
```

Lol, I can make a one-liner:

```
alias jekyll_server="lsof -t -i :4000 | xargs kill & bundle exec jekyll serve --drafts --incremental"
```

Well, that was easy.