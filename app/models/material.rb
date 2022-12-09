class Material < ApplicationRecord
  # has_many :suppliers
  has_many :baskets, dependent: :destroy
  has_many :material_suppliers
  has_many :suppliers, through: :material_suppliers

  include PgSearch::Model
  multisearchable against: [:name, :category]
  pg_search_scope :global_search,
  against: [ :name, :category ],
  associated_against: {
    supplier: [ :name ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
