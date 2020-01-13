class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.date       :date,       null: false
      t.string     :time,       null: false
      t.string     :name,       null: false
      t.string     :gender,     null: false
      t.integer    :age,        null: false
      t.text       :allergy
      t.text       :personality
      t.text       :mention
      t.string     :reply
      t.references :user,       foreign_key: true
      t.references :accept,     foreign_key: true
      t.timestamps
    end
  end
end
