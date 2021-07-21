# Authentication with Omniauth and Github

One blob of notes here: https://github.com/josh-works/devise_practice_02/blob/master/README.md#L1-L170

For:

```
(github) Authentication failure! authenticity_error: OmniAuth::AuthenticityError, Forbidden
```

Read this issue: https://github.com/heartcombo/devise/issues/5236

Toprated "fix" didn't: https://github.com/heartcombo/devise/issues/5236#issuecomment-766458987

The fix is:

`gem 'omniauth-rails_csrf_protection'` and bundle. 

Now it works!

GitHub app can be created/found here: https://github.com/settings/apps

### Scopes

