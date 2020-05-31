class CreateMuscles < ActiveRecord::Migration[6.0]
  def change
    create_table :muscles do |t|
      t.date :day
      t.string :menu, null: false
      t.string :load, null: false
      t.integer :user_id

      t.timestamps
    end
  end
end
