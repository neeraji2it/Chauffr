class AddUnicodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :unicode, :string
  end
end