class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.date :day
      t.string :meal_content
      t.integer :protein
      t.integer :user_id
      
      t.timestamps
    end
  end
end
