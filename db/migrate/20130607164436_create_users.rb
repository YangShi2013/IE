class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :birth
      t.string :cellNum
      t.string :homeNum
      t.string :club
      t.string :email
      t.string :address
      t.string :from
      t.string :qq
      t.string :MSN
      t.string :location
      t.string :condition

      t.timestamps
    end
  end
end
