class Room < ApplicationRecord
  validates  :user_id, :request_id, presence: true
  belongs_to :user,    optional: true
  belongs_to :request, optional: true
  has_many   :messages
end