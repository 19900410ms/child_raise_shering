class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.date :date, null: false
      t.integer :time, null: false
      t.text :mention
      t.references :user_id, foreign_key: true
      t.timestamps
    end
  end
end
