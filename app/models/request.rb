class Request < ApplicationRecord
  validates :date, :time, :gender, :name, :age, presence: true
  belongs_to :user,   optional: true
  belongs_to :accept, optional: true
  has_one    :room
end
