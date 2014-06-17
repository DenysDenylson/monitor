class AddModeloToThermostat < ActiveRecord::Migration
  def change
    add_column :thermostats, :modelo, :String
  end
end
