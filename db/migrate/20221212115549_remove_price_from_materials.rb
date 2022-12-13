class RemovePriceFromMaterials < ActiveRecord::Migration[7.0]
  def change
    remove_column :materials, :price
  end
end
