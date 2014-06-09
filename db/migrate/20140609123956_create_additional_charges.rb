class CreateAdditionalCharges < ActiveRecord::Migration
  def change
    create_table :additional_charges do |t|
      t.string :charge_name
      t.float :surcharge
      t.timestamps
    end
  end
end
