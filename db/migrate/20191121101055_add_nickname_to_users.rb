class AddNicknameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :region, :string, null:false
    add_column :users, :address, :string, null: false ,unique: true
    add_column :users, :age, :integer, null: false
    add_column :users, :gender, :string, null: false
  end
end
