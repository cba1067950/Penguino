class CreatePenguins < ActiveRecord::Migration[5.2]
  def change
    create_table :penguins do |t|
      t.string :name
      t.string :image_url
      t.string :title
      t.string :temp
      t.boolean :alive
      t.string :species
      t.integer :colony_id
      t.timestamps
    end
  end
end
