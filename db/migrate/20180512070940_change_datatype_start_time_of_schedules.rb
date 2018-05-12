class ChangeDatatypeStartTimeOfSchedules < ActiveRecord::Migration[5.0]
  def change
    change_column :schedules, :start_time, :string
    change_column :schedules, :end_time, :string
  end
end
