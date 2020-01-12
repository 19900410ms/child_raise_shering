class Room < ApplicationRecord
  belongs_to :accept
  belongs_to :request
end