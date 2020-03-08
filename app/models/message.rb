class Message < ApplicationRecord
  validates  :chat, :user_id, :room_id, presence: true
  belongs_to :user, optional: true
  belongs_to :room, optional: true
end
