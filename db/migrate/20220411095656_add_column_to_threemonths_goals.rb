class AddColumnToThreemonthsGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :threemonths_goals, :quarter, :integer  
  end
end