class AddSuppliersColumnToMaterials < ActiveRecord::Migration[7.0]
  def change
    add_reference :materials, :suppliers
  end
end
