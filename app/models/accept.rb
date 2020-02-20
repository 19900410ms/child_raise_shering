class Accept < ApplicationRecord
  validates  :date, :time, :capacity, presence: true
  belongs_to :user
  has_many   :requests

  def self.search(search)
    # if serach = true
    #   @accepts = Accept.where('date LIKE ?', "%#{params[:date]}%")
    # else
    #   return Accept.includes(:user).order("date ASC") unless search
    # end
    # return Accept.includes(:user).order("date ASC") unless search
    Accept.where(date: search[:date]).order("date ASC")
  end
end