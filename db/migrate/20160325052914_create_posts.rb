class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :sake_name
      t.integer :price
      t.string :location
      t.datetime :date
      t.string :user_name
      t.string :email

      t.timestamps null: false
    end
  end
end
