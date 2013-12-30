Paypal_subscription
===================

Demo app of paypal subscription(Tested on Rails 4.0)

Summary
===================

Only premium users of this application can view the premium page and to be a premium member you have to <strong>subscribe</strong> for the service via paypal

How to use
===================

- Set your buisness email(test email) id in /config/initializers/paypal.rb
- You can change the subscription duration( Default is one month )
- run db:migrate
- run rails server on console
- open browser and open http://localhost:3000

P.S - I have currently used test email ids and this app is tested on paypal sandbox, it still needs to be tested on actual accounts


