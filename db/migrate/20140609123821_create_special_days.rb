class CreateSpecialDays < ActiveRecord::Migration
  def change
    create_table :special_days do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.float :surcharge
      t.timestamps
    end
  end
end
