# how to set or reset local root credentials

```
mysql => cli app
mysqld => daemon, this is important?
```

I'm running mysqld 8.0.16

# ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)

```
> mysql -uroot
> ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
```

```
> mysql -uroot -p
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)
```

Kill all `mysql` and `mysqld` processes by PID

```
> brew services stop mysql
```

another terminal window:

```
mysqld_safe --skip-grant-tables
```

and _another_ window, log into mysql:

```
mysql> UPDATE mysql.user SET Password=PASSWORD('password') WHERE User='root';
mysql> UPDATE mysql.user SET authentication_string=PASSWORD('password') WHERE User='root';
mysql> update user set authentication_string=password('1111') where user='root';
mysql> update mysql.user set authentication_string='password' where user='root';
mysql> update mysql.user set authentication_string='password' where user='root';
mysql> UPDATE mysql.user SET authentication_string='password' WHERE User='root'; => this worked, not sure why nothing else did
```

so, 

```
UPDATE mysql.user SET authentication_string='password' WHERE User='root';
```

[https://stackoverflow.com/questions/21944936/error-1045-28000-access-denied-for-user-rootlocalhost-using-password-y](https://stackoverflow.com/questions/21944936/error-1045-28000-access-denied-for-user-rootlocalhost-using-password-y)