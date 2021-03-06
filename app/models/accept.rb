class Accept < ApplicationRecord
  validates  :date, :time, :capacity, presence: true
  belongs_to :user, optional: true
  has_many   :requests

  def self.search(search)
    Accept.where(date: search[:date]).order("date ASC")
  end
end