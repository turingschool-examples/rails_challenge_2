class Book < ApplicationRecord
  has_many :reviews

  def average_rating
    reviews.average(:rating)
  end

  def max_rating
    reviews.maximum(:rating)
  end
  
  def lowest_rating
    reviews.minimum(:rating)
  end
end
