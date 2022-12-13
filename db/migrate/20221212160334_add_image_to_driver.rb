class AddImageToDriver < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers, :driver_img, :string
  end
end
