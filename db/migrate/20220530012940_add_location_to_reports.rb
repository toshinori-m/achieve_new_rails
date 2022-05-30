class AddLocationToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :location, :string
    add_column :reports, :time, :string
    add_column :reports, :condition, :string
    add_column :reports, :intensity, :string
  end
end
