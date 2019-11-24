class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tours
  has_one    :payment
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  private
  def
  def tour_present
    if tour.nil?
      errors.add(:tour, "is not valid or is not active.")
    end
  end
end
