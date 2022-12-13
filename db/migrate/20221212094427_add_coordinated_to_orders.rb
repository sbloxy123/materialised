class AddCoordinatedToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :latitude, :float
    add_column :orders, :longitude, :float
  end
end
