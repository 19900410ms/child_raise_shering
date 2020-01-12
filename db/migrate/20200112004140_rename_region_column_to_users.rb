class RenameRegionColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :address, :building_street
    rename_column :users, :region,  :city
  end
end