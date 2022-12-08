class Supplier < ApplicationRecord
  has_many :materials, through: :material_suppliers
  has_many :material_suppliers
end
