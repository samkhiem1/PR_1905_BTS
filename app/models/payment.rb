class Payment < ApplicationRecord
  belongs_to :booking
  has_many :activities
end
