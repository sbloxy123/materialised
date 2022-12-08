class Material < ApplicationRecord
  has_many :material_suppliers
  has_many :suppliers, through: :material_suppliers
end
