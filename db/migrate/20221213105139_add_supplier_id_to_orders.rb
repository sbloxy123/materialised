class AddSupplierIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :supplier
  end
end
