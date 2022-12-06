class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :location
      t.string :vehicle_type

      t.timestamps
    end
  end
end
