class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.integer :age, null: false
      t.text :allergy
      t.text :personality
      t.references :user, foreign_key: true
      t.references :request, foreign_key: true
      t.timestamps
    end
  end
end
