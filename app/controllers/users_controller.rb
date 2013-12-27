class UsersController < ApplicationController
  before_action :redirect_to_root_unless_premium, only: :premium_page

  def show
  end

  def premium_page
  end

  private

  def redirect_to_root_unless_premium
    redirect_to root_path unless current_user.is_premium?
  end
end
