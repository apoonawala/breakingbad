class CreatePlan < ActiveRecord::Migration

 def change
    create_table :plans do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :habit_id

      t.timestamps
    end
  end

end
