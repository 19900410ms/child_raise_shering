class Accept < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :deals
end