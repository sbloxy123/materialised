class Basket < ApplicationRecord
  belongs_to :order
  belongs_to :material
  # has_many :suppliers, through: :materials
  validates :quantity, presence: true
end
