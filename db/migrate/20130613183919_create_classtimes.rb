class CreateClasstimes < ActiveRecord::Migration
  def change
    create_table :classtimes do |t|
      t.string :name
      t.string :password
      t.integer :totalTime
      t.integer :takenTime
      t.integer :balance
      t.integer :VIPbalance
      t.string :givenVIPtime
      t.integer :takenVIPTime
      t.string :lastClass
      t.string :validDate

      t.timestamps
    end
  end
end
