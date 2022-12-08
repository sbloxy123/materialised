class Material < ApplicationRecord
  # has_many :suppliers
  has_many :baskets, dependent: :destroy
end
