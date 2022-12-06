class AddPlateNumberToDrivers < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers, :plate_number, :string
  end
end
