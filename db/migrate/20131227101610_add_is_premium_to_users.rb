class AddIsPremiumToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_premium, :boolean, default: false
  end
end
