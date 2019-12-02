class AddReplyToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :reply, :string
  end
end
