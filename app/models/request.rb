class Request < ApplicationRecord
  belongs_to :user
  belongs_to :accept
end
