class CreateColonies < ActiveRecord::Migration[5.2]
  def change
    create_table :colonies do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
