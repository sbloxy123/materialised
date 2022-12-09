class RemoveNullFalseFromDriver < ActiveRecord::Migration[7.0]
  def change
    change_column_null :orders, :driver_id, true
  end
end
