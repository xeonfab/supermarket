class Superhero < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  #has_one_attached :photo
end
