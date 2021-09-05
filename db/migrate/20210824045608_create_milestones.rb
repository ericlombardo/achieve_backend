class CreateMilestones < ActiveRecord::Migration[6.1]
  def change
    create_table :milestones do |t|
      t.string :content
      t.boolean :complete, default: false
      t.integer :goal_id

      t.timestamps
    end
  end
end
