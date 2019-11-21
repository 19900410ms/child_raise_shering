class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.date :date
      t.integer :time
      t.text :mention
      t.integer :user_id
      t.timestamps
    end
  end
end
