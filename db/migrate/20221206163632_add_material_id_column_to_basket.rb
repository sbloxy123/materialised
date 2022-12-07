class AddMaterialIdColumnToBasket < ActiveRecord::Migration[7.0]
  def change
    add_reference :baskets, :materials, null: false, foreign_key: true
  end
end
