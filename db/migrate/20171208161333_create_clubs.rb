class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :peoples
      t.integer :coachs
      t.string :size
      t.string :dateofcreate
      t.string :cofunder
      t.string :price
      t.text :desc

      t.timestamps
    end
  end
end
