class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :Ten
      t.string :GioiTinh
      t.string :DiaChi

      t.timestamps null: false
    end
  end
end
