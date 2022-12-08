class Basket < ApplicationRecord
  belongs_to :order
  has_many :materials
  # has_many :suppliers, through: :materials
  validates :quantity, presence: true
end
