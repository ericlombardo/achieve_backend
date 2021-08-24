class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.integer :duration
      t.datetime :date
      t.text :notes
      t.integer :goal_id

      t.timestamps
    end
  end
end
