class Supplier < ApplicationRecord
  has_many :materials, through: :material_suppliers
  has_many :material_suppliers
  has_many :orders, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  multisearchable against: [:name]
end
