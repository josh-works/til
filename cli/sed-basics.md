# Minimum Viable `sed`

```shell
$ lsof -i :4000 | sed -n '1,2p'
COMMAND   PID         USER   FD   TYPE            DEVICE SIZE/OFF NODE NAME
ruby    43396 joshthompson    7u  IPv4 0x1b3a23e9b0d93af      0t0  TCP localhost:terabase (LISTEN)
$ lsof -i :4000 | sed -n '1p'
COMMAND   PID         USER   FD   TYPE            DEVICE SIZE/OFF NODE NAME
$ lsof -i :4000 | sed -n '2p'
ruby    43396 joshthompson    7u  IPv4 0x1b3a23e9b0d93af      0t0  TCP localhost:terabase (LISTEN)
```

Cool! we can pipe something in, call `sed -n '2p'`, and grab just the second line.

Now how to call the 2nd value, the `43396`

----------------

From [https://mobile.twitter.com/jbrancha/status/1349857205596643331/photo/1](https://mobile.twitter.com/jbrancha/status/1349857205596643331/photo/1)

```
$ postgres -V
postgres (PostgreSQL) 13.1

$ postgres -V | sed -n 's/postgres (PostgreSQL) \(.*\)/\1/p'
13.1
```

```
lsof -i :4000 | sed -n 's/ruby    \(.*\)/\1/p'
```

gettin' there. 

### Resources

- [How to use the sed command on Linux](https://www.howtogeek.com/666395/how-to-use-the-sed-command-on-linux/)