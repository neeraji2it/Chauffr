class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :mobile
      t.string :company_name
      t.string :company_address
      t.timestamps
    end
  end
end