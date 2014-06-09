class CreateTimeBaseds < ActiveRecord::Migration
  def change
    create_table :time_baseds do |t|
      t.string :type
      t.float :surcharge
      t.timestamps
    end
  end
end
