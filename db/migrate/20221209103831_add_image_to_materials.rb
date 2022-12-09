class AddImageToMaterials < ActiveRecord::Migration[7.0]
  def change
    add_column :materials, :image, :string
  end
end
