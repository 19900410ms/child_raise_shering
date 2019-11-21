class AddNicknameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string
    add_column :users, :region, :string
    add_column :users, :address, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
  end
end
