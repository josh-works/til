# How to create an alias

I have this "today-i-learned" thing, in a very specific place.

I want to be able to add to it, and reference it, often.

so, in my terminal, when I type

```
til
```

I want by shell to act as if I had typed `cd /Users/joshthompson/me/til`

## Open up `~/.zshrc`

I use the `zsh` shell, and `rc` stands for "runtime configuration", and it's located as a hidden file in my home directory.

so I type:

```
atom ~/.zshrc
```

which is terse way to express:

```
atom /Users/joshthompson/.zshrc
```

Anyway, somewhere towards the bottom, I'll add:

```
alias til="cd ~/me/til"
```

And in my terminal I do `source ~/.zshrc`. (which makes this new alias available to my shell!)

Now I can type `til` from _anywhere_, and I'll find myself in the right location!
