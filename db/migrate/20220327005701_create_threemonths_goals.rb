class CreateThreemonthsGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :threemonths_goals do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :threemonths_goals, [:user_id, :created_at]
  end
end
