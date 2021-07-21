# How To Deploy Flask App to Heroku

Freeze dependencies, something like `gemfile.lock`?

```
pip freeze > requirements.txt
```

In `Procfile`

```
web: gunicorn app:app
release: python manage.py db upgrade
```

## Heroku in `cli`

```
heroku create
heroku open
git push heroku main
```

And the logs will stream, showing the app building in Heroku.

After `heroku create` it gave me [https://pure-everglades-12329.herokuapp.com/](https://pure-everglades-12329.herokuapp.com/)

Nothing on the webpage, the `git push` command showed some logs, with an error:

```
> heroku logs --tail
 ›   Warning: heroku update available from 7.51.0 to 7.54.0.
2021-05-24T04:33:13.000000+00:00 app[api]: Build started by user thompsonjoshd@gmail.com
2021-05-24T04:33:45.708633+00:00 app[api]: Deploy 334096fe by user thompsonjoshd@gmail.com
2021-05-24T04:33:45.708633+00:00 app[api]: Running release v3 commands by user thompsonjoshd@gmail.com
2021-05-24T04:33:46.144725+00:00 app[api]: Starting process with command `/bin/sh -c 'if curl $HEROKU_RELEASE_LOG_STREAM --silent --connect-timeout 10 --retry 3 --retry-delay 1 >/tmp/log-stream; then
2021-05-24T04:33:46.144725+00:00 app[api]: chmod u+x /tmp/log-stream
2021-05-24T04:33:46.144725+00:00 app[api]: /tmp/log-stream /bin/sh -c '"'"'python manage.py db upgrade'"'"'
2021-05-24T04:33:46.144725+00:00 app[api]: else
2021-05-24T04:33:46.144725+00:00 app[api]: python manage.py db upgrade
2021-05-24T04:33:46.144725+00:00 app[api]: fi'` by user thompsonjoshd@gmail.com
2021-05-24T04:33:50.826771+00:00 heroku[release.3212]: Starting process with command `/bin/sh -c 'if curl https://heroku-release-output.s3.amazonaws.com/log-stream?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJ3LIQ2SWG7V76SVQ%2F20210524%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210524T043346Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=d848c1c416e89c317a8218ece941311827eb9cf1259a7e7166e908b49c96bc75 --silent --connect-timeout 10 --retry 3 --retry-delay 1 >/tmp/log-stream; then
2021-05-24T04:33:51.507946+00:00 heroku[release.3212]: State changed from starting to up
2021-05-24T04:33:54.259334+00:00 app[release.3212]: python: can't open file '/app/manage.py': [Errno 2] No such file or directory
2021-05-24T04:33:54.485609+00:00 heroku[release.3212]: Process exited with status 2
2021-05-24T04:33:54.554159+00:00 heroku[release.3212]: State changed from up to complete
2021-05-24T04:33:56.193673+00:00 app[api]: Release v3 command failed by user thompsonjoshd@gmail.com
2021-05-24T04:33:57.000000+00:00 app[api]: Build succeeded
```

I'm not sure if the `python: can't open file '/app/manage.py': [Errno 2] No such file or directory` matters.


## Resources

- [https://stackabuse.com/deploying-a-flask-application-to-heroku/](https://stackabuse.com/deploying-a-flask-application-to-heroku/)
- [https://www.geeksforgeeks.org/deploy-python-flask-app-on-heroku/](https://www.geeksforgeeks.org/deploy-python-flask-app-on-heroku/)