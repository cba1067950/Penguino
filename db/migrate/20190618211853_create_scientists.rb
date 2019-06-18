class CreateScientists < ActiveRecord::Migration[5.2]
  def change
    create_table :scientists do |t|
      t.string :name
      t.integer :age
      t.string :bio
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
