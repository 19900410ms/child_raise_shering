class CreateAccepts < ActiveRecord::Migration[5.2]
  def change
    create_table :accepts do |t|
      t.date :date, null: false
      t.integer :time, null:false
      t.integer :capacity, null:false
      t.integer :age_range
      t.text :beg
      t.references :user_id, foreign_key: true
      t.timestamps
    end
  end
end
