class DropSideBaskets < ActiveRecord::Migration[7.0]
  def change
    drop_table :side_baskets
  end
end
