class PaypalSubscriptionsController < ApplicationController
  def successful
    current_user.update_attributes(is_premium: true)
    flash[:notice] = "Subscription Successful"
    redirect_to root_path
  end

  def failure
    flash[:notice] = "Subscription Unsuccessful"
    redirect_to root_path
  end
end
