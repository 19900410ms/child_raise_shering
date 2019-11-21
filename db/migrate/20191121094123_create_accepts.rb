class CreateAccepts < ActiveRecord::Migration[5.2]
  def change
    create_table :accepts do |t|
      t.date :date
      t.integer :time
      t.integer :capacity
      t.integer :age_range
      t.text :beg
      t.integer :user_id
      t.timestamps
    end
  end
end
