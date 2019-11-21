class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.text :allergy
      t.text :personality
      t.integer :user_id
      t.integer :request_id
      t.timestamps
    end
  end
end
