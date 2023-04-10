class Card < ApplicationRecord
  belongs_to :library
  has_many :user
end
