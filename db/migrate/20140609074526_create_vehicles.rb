class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
	t.string :vehicle_type
	t.float :min_fare
	t.float :first_fare
	t.float :after_first_fare
      t.timestamps
    end
  end
end
