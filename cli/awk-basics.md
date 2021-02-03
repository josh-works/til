# Minimum Viable `awk`

Sigh. Have you seen people use `awk`? I have. I have _no idea_ how to use it.

I want to be able to run a command like this:

```
$ lsof -i :4000
COMMAND   PID         USER   FD   TYPE            DEVICE SIZE/OFF NODE NAME
ruby    43396 joshthompson    7u  IPv4 0x1b3a23e9b0d93af      0t0  TCP localhost:terabase (LISTEN)
```

```
lsof -i :4000 |  sed -n '/\d+{3,6}/p'
```

Awk is:

> a versatile programming language for working on files.

and extract the `PID` of the process, to assign as a variable, so I can issue a `kill` command to it (all as part of a larger bash script). 

Seems like this shouldn't be too hard...

oops. Maybe should be `sed`?



### Resources

- [Getting Started With AWK Command \[Beginner's Guide\]](https://linuxhandbook.com/awk-command-tutorial/)
- [Pipe Command Output into Awk (Stack Overflow)](https://stackoverflow.com/questions/59726081/pipe-command-output-into-awk)