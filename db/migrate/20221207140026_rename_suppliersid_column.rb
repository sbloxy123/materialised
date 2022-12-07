class RenameSuppliersidColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :materials, :suppliers_id, :supplier_id
  end
end
