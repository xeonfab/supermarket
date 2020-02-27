class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :superhero
  has_one :review
end
