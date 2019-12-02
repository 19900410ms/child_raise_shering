class AddHideToAccepts < ActiveRecord::Migration[5.2]
  def change
    add_column :accepts, :hide, :string
  end
end
