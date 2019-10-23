class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :payment
    has_many :tours
end
