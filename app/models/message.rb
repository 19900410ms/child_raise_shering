class Message < ApplicationRecord
  validates  :chat, presence: true
  has_many   :users
  belongs_to :room
end
