class AddColumnToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :date, :datetime
  end
end
