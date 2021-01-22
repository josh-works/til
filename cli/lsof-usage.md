# What is `lsof`, how to use

run `tldr lsof`:

(look at my `tldr` page if you don't have TLDR)

```
lsof

Lists open files and the corresponding processes.
```

Have something running on port 3000, don't know what?

```
lsof -i :3000
```

that's a similar "format" as using `ps aux | grep <process>`

