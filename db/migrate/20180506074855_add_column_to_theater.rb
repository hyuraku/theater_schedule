class AddColumnToTheater < ActiveRecord::Migration[5.0]
  def change
    add_column :theaters, :area, :string
  end
end
