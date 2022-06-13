class CreateParticipatingRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :participating_rooms do |t|
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
    add_index :participating_rooms, [:report_id, :created_at]
  end
end
