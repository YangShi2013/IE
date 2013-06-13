class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :year
      t.string :month
      t.string :day
      t.string :startTime
      t.string :endTime
      t.string :people
      t.string :theme
      t.string :preparation
      t.string :homework

      t.timestamps
    end
  end
end
