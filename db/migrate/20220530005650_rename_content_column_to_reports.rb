class RenameContentColumnToReports < ActiveRecord::Migration[6.1]
  def change
    rename_column :reports, :content, :report
  end
end
