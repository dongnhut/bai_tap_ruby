class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_1, :string
  end
end
