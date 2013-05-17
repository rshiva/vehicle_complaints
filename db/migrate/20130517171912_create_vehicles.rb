class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vehicle_number
      t.string :vehicle_types

      t.timestamps
    end
  end
end
