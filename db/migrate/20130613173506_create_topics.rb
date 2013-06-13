class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :year
      t.string :month
      t.string :day
      t.string :time
      t.string :people
      t.string :theme
      t.string :preparation
      t.string :homework

      t.timestamps
    end
  end
end
