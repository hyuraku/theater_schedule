class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string  :name,null: false,index: true
      t.integer :minutes ,null: false
      t.timestamps
    end
  end
end
