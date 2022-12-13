class AddCoordinatesToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :latitude, :float
    add_column :suppliers, :longitude, :float
  end
end
