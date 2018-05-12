class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.references :work,index: true,null: false,foreign_key: true
      t.references :theater,index: true,null: false,foreign_key: true
      t.datetime :schedule_day,null: false
      t.string :screen_name,null: false
      t.datetime :start_time,null: false
      t.datetime :end_time,null: false
      t.timestamps
    end
  end
end
