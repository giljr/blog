class DropEmailUsers < ActiveRecord::Migration[7.0]
  def change
    drop_table :email_users
  end
end
