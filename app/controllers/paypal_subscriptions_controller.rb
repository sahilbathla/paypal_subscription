class PaypalSubscriptionsController < ApplicationController

  def successful

      current_user.update_attributes(:is_premium => false)
    if(session[:token] == params[:token])
      current_user.update_attributes(:is_premium => true)
      flash[:notice] = "Subscription Successful"
      session[:token] = nil
    else
      flash[:alert] = "Technical Issues"
    end
    redirect_to root_path
  end

  def failure
    flash[:alert] = "Subscription Unsuccessful"
    redirect_to root_path
  end

  def notify
    #handler for notifications
  end

end
