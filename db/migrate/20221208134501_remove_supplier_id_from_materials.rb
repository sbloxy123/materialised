class RemoveSupplierIdFromMaterials < ActiveRecord::Migration[7.0]
  def change
    remove_column :materials, :supplier_id
  end
end
