class Book < ApplicationRecord
   belongs_to :library
  has_many :authors
  has_many :ganres

end
