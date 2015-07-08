class AddAddressToUnits < ActiveRecord::Migration
  def change
    add_column :units, :address, :string
    add_column :units, :city, :string
    add_column :units, :state, :string
    add_column :units, :zip, :string
  end
end
