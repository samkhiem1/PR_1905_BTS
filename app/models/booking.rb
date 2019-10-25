class Booking < ApplicationRecord
  has_one :user
  belongs_to :payment
  has_many :tours
end
