class CreateClasstimes < ActiveRecord::Migration
  def change
    create_table :classtimes do |t|
      t.string :name
      t.string :password
      t.integer :totalTime
      t.integer :takenTime
      t.integer :balance
      t.integer :VIPbalance
      t.string :givenVIPTime
      t.integer :takenVIPTime
      t.string :lastClass
      t.string :validYear
      t.string :validMonth
      t.string :validDay

      t.timestamps
    end
  end
end
