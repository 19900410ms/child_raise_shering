class CreateAccepts < ActiveRecord::Migration[5.2]
  def change
    create_table :accepts do |t|
      t.date :date, null: false
      t.string :time, null:false
      t.integer :capacity, null:false
      t.string :age_range
      t.text :beg
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
