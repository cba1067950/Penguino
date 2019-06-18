class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :scientist_id
      t.integer :colony_id
      t.string :location
      t.string :project_name
      
      t.timestamps
    end
  end
end
