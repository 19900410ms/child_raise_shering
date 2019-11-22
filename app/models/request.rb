class Request < ApplicationRecord
  has_many :children
  belongs_to :user
end
