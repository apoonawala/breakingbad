class CreateHabits < ActiveRecord::Migration

 def change
    create_table :habits do |t|
      t.string :name
      t.text :description
      t.string :category

      t.timestamps
    end
  end


end
