class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.integer :durationNumber
      t.string :durationUnit
      t.date :durationEnd
      t.string :goalVerb
      t.integer :goalNumber
      t.string :goalUnit
      t.integer :timeSpent

      t.timestamps
    end
  end
end
