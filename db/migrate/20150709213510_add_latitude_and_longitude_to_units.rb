class AddLatitudeAndLongitudeToUnits < ActiveRecord::Migration
  def change
    add_column :units, :latitude, :float
    add_column :units, :longitude, :float
  end
end
