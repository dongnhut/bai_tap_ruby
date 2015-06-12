class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :password_hash
      t.string :gender
      t.string :user_access_token
      t.integer :user_account_id

      t.timestamps null: false
    end
  end
end
