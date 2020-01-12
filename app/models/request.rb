class Request < ApplicationRecord
  validates :date, :time, :gender, :name, :age, presence: true
  belongs_to :user
  belongs_to :accept
  belongs_to :room
end
