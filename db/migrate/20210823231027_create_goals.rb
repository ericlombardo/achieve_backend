class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.date :durationEnd
      t.integer :dayCount
      t.string :goalVerb
      t.integer :goalNumber
      t.string :goalUnit
      t.text :why

      t.timestamps
    end
  end
end
