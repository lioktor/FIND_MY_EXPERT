class Expertise < ApplicationRecord
  belongs_to :user
  has_many :missions, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_category_and_description,
    against: [:category, :description],
    associated_against: {
      user: [:first_name, :last_name]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
