class AddWhyToGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :why, :text
  end
end
