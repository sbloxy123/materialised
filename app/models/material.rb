class Material < ApplicationRecord
  # has_many :suppliers
  belongs_to :basket, optional: true, dependent: :destroy
end
