class Book < ApplicationRecord
  has_many :reviewings
  has_many :reviews, through: :reviewings
  

end
