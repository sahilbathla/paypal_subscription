PaypalSubscribe.setup do |config|

  # Your PayPal ID or an email address associated with your PayPal account.
  # Email addresses must be confirmed.
  config.business = "hate.seaker-facilitator@gmail.com"

  # Do not prompt buyers to include a note with their payments
  config.no_note = true

  # Description of item being sold. If you are collecting aggregate payments,
  # the value can be a summary of all items purchased, a tracking number, or
  # a generic term such as “subscription.” If this variable is omitted, buyers
  # see a field in which they can enter the item name.
  config.item_name = "My Service"

  # Regular subscription price.
  config.a3 = 2

  # Subscription duration. Specify an integer value in
  # the allowable range for the units of duration that you specify with t3.
  config.p3 = 1

  #no shipping address required for subscription
  config.no_shipping = :none

  #auto return url
  # https://www.sandbox.paypal.com/us/cgi-bin/webscr?cmd=_profile-website-payments

  # config.additional_values = lambda do |config|
  #   config[:return] = 'http://google.com' 
  #   return config
  # end
  

  # config.currency_code = 

  # Regular subscription units of duration.
  #
  # Allowable values are:
  #
  #  D – for days; allowable range for p3 is 1 to 90
  #  W – for weeks; allowable range for p3 is 1 to 52
  #  M – for months; allowable range for p3 is 1 to 24
  #  Y – for years; allowable range for p3 is 1 to 5
  config.t3 = "M"

  config.currency_code = "USD"

  # Recurring payments. Subscription payments recur unless subscribers cancel
  # their subscriptions before the end of the current billing cycle or you
  # limit the number of times that payments recur with the value that you
  # specify for srt.
  #
  # true or false
  config.src = true

  # Reattempt on failure. If a recurring payment fails, PayPal attempts to
  # collect the payment two more times before canceling the subscription.
  #
  # true or false
  config.sra = true

  # Recurring times. Number of times that subscription payments recur.
  # Specify an integer with a minimum value of 1 and a maximum value
  # of 52. Valid only if you specify src="1".
  config.srt = 12

  config.success_callback = :successful_paypal_subscription
  config.failure_callback = :failure_paypal_subscription
# config.paypal_notify = :root

  # Extend config options which ever you want.
  # See
  # https://cms.paypal.com/us/cgi-bin/?cmd=_render-content&content_ID=developer/e_howto_html_Appx_websitestandard_htmlvariables
  #
  # This has to be a lambda:
  #
  # config.additional_values = ->(config) do
  #        config[:modify] = value_for_modify
  #
  #        return config
  #      end
  # And it has to return the config object!
  #
  # config.additional_values= lambda { |config| }
end