class CreateMonthlyGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :monthly_goals do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
    add_index :monthly_goals, [:user_id, :created_at]
  end
end
