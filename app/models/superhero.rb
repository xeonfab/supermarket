class Superhero < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

    include PgSearch::Model
      pg_search_scope :global_search,
        against: [ :name, :price, :location, :age ],
        # associated_against: {
        #   user: [ :first_name, :last_name ]
        # },
        using: {
          tsearch: { prefix: true }
        }


end

 # pg_search_scope :global_search,
 #    against: [ :name, :price ],
 #    associated_against: {
 #      user: [ :first_name, :last_name ]
 #    },
 #    using: {
 #      tsearch: { prefix: true }
 #    }
