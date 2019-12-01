class Deal < ApplicationRecord
  belongs_to :user
  belongs_to :accepts
  has_many :requests
end