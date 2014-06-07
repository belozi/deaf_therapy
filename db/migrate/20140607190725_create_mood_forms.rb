class CreateMoodForms < ActiveRecord::Migration
  def change
    create_table :mood_forms do |t|
      t.integer :mood
      t.text :comment
      t.boolean :panic

      t.timestamps
    end
  end
end
