class Review < ApplicationRecord
  # RATINGS = %w[1 2 3 4 5]
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  # validates :rating, inclusion: { in: RATINGS }
  validates :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: (0..5)}
end
