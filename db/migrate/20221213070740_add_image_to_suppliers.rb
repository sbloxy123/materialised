class AddImageToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :image, :binary
  end
end
