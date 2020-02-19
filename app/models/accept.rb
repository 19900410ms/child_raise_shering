class Accept < ApplicationRecord
  validates  :date, :time, :capacity, presence: true
  belongs_to :user
  has_many   :requests

  def self.search(search)
    return Accept.all unless search
    Accept.where(prefecture_id: search[:prefecture_id])
  end
end