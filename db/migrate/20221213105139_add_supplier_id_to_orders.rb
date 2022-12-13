class AddSupplierIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :supplier, null: false, foreign_key: true
  end
end
