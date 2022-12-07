class RemoveMaterialFromSuppliers < ActiveRecord::Migration[7.0]
  def change
    remove_reference:suppliers, :material,  index: true
  end
end
