class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :price
      t.integer :length
      t.integer :width
      t.integer :weight

      t.timestamps
    end
  end
end
