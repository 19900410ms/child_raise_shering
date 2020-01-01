class Accept < ApplicationRecord

  validates :date, :time, :capacity, presence: true

  belongs_to :user
  has_many :requests
end