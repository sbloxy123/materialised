class Order < ApplicationRecord
  belongs_to :driver, optional: true
  belongs_to :user
  belongs_to :supplier, optional: true
  has_many :baskets, dependent: :destroy

  monetize :amount_cents
  geocoded_by :site_location
  after_validation :geocode, if: :will_save_change_to_site_location?

end
