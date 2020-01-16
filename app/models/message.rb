class Message < ApplicationRecord
  validates  :chat, presence: true
  belongs_to :user
  belongs_to :room
end
