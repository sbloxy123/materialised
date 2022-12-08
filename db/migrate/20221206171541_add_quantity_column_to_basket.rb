class AddQuantityColumnToBasket < ActiveRecord::Migration[7.0]
  def change
    add_column :baskets, :quantity, :integer
  end
end
