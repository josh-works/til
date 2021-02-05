# How To Add Apple Pay Options To Stripe Checkout

I've got Stripe Checkout already integrated on my site, per my [How To Add Stripe To Jekyll](https://josh.works/add-stripe-to-static-site-course) course, someone asked:

> Also, do you know if this setup works if a customer uses Apple Pay or Google Pay? I'm not sure if the email address gets provided to us that way?

It was a great question, so I looked it up. 

I headed to their help docs, ended up on [https://dashboard.stripe.com/settings/payments/apple_pay](https://dashboard.stripe.com/settings/payments/apple_pay)

Added my domain, downloaded the file, needed to make it available at [https://josh.works/.well-known/apple-developer-merchantid-domain-association](https://josh.works/.well-known/apple-developer-merchantid-domain-association), per:

![well-known](/images/stripe-apple-pay.jpg)

Here's the commit: [https://github.com/josh-works/josh-works.github.io/commit/bc0455ae24b289da35ab0cb8ed74b0b81efd203a](https://github.com/josh-works/josh-works.github.io/commit/bc0455ae24b289da35ab0cb8ed74b0b81efd203a)

To add the file, I had to create a `.well-known/apple-developer-merchantid-domain-association` file, and then tell Jekyll to make it available at that path, by updating `_config.yml`:

```diff
diff --git a/_config.yml b/_config.yml
index 6c65151..35c1c8d 100644
--- a/_config.yml
+++ b/_config.yml
@@ -29,12 +29,12 @@ future: true
 twitter_username:   "josh_works"

-include: ['_pages']
+include: ['_pages', '.well-known']

 pages_list:
   about: '/about'
```

### How to test

I don't use an iPhone. How do I know this is working, and can accept Apple Pay?

OK, I can use Wallet & Apple Pay in Safari on my Mac. I've not used it before, but worth setting up to test.

[Use Wallet & Apple Pay on Mac](https://support.apple.com/guide/mac-help/use-wallet-apple-pay-on-mac-mchl4773988b/mac)

I had to hit the "start using iCloud" button to get `Wallet & Apple Pay` to start working. Enter a few passwords, including my _previously used_ password on this laptop? 

I can only imagine what sort of authentication scheme is being put to use. 

OK, using iCloud... back to `Wallet & Apple Pay` in system preferences. 

Add a new card, enter verification number that's texted, address, etc.

Apple Pay still not working - software updates?

![safare update](/images/software_update.jpg)

Success! When I visit [https://applepaydemo.apple.com](https://applepaydemo.apple.com) in Safari, I can run a demo transaction... and I head to [https://stripe.com/apple-pay](https://stripe.com/apple-pay) in Safari, and it works.

Now, I head to [https://josh.works/add-stripe-to-static-site-course#how-will-you-read-it](https://josh.works/add-stripe-to-static-site-course#how-will-you-read-it) and hit the "buy now" button, and... success:

![it works!](/images/apple-pay.jpg)

Great success!

## Google Pay

Stripe Checkout supports Google Pay out-of-the-box, assuming you have the right settings checked:

Head to your stripe checkout dashboard: [https://dashboard.stripe.com/settings/checkout](https://dashboard.stripe.com/settings/checkout) and make sure you've selected both `digital wallet` options:

![stripe checkout settings](/images/enable-digital-wallets.jpg)

If you're using Firefox, you won't see Google Pay options, but if you fire up Chrome (desktop or mobile browser):

![desktop](/images/google-pay-working.jpg)






### Resources

- [Jekyll config options](https://jekyllrb.com/docs/configuration/options/)
- [Jekyll, .well-known and other dotfiles](https://josh.st/2015/10/22/jekyll-well-known-and-dotfiles/)
- [Use Wallet & Apple Pay on Mac (support.apple.com)](https://support.apple.com/guide/mac-help/use-wallet-apple-pay-on-mac-mchl4773988b/mac)
- [Pay with Apple Pay in Safari on Mac (support.apple.com)](https://support.apple.com/guide/safari/pay-with-apple-pay-ibrw8e207504/mac)
- [Stripe: Demo Apple Play in Safari](https://stripe.com/apple-pay)
- [apple pay on mac not working](https://discussions.apple.com/thread/7689603)