# Connect Postico to a Heroku Database Instance

1. Visit: https://data.heroku.com/
2. Click on the datastore you want access to, like `postgressql-something-something`, from the desired application
3. `credentials`
4. create a read-only database user, if needed.
4. Note/copy to clipboard (you used a clipboard manager right?) the `host`, `username`, `password`, . (It's possible the host will change, there's a better way to do this, but its good enough for now)
5. open [postico](https://eggerapps.at/postico/), buy a license if needed.
6. Click `new favorite`
7. Add relevant details:

```
nickname: app_name_production_read_only
host: <value from heroku>
password: <value from heroku>
port: default is fine (5432)
database: <value from heroku>
```

Watch for whitespace prepended to these values. 

Hit `connect`, ignore the mitm warning. (risky?)



### Resources

- [https://sql-server-vb-asp.net/article/how-can-i-view-database-records-in-heroku/](https://sql-server-vb-asp.net/article/how-can-i-view-database-records-in-heroku/)
- [https://devcenter.heroku.com/articles/connecting-to-heroku-postgres-databases-from-outside-of-heroku](https://devcenter.heroku.com/articles/connecting-to-heroku-postgres-databases-from-outside-of-heroku)