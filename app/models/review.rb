class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5, message: 'The rating must be a whole number between 0 and 5' }, numericality: { only_integer: true }
end
