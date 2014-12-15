class AddUserNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin_name, :string
  end
end
