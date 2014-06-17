class AddModelToThermostats < ActiveRecord::Migration
  def change
    add_column :thermostats, :model, :String
  end
end
