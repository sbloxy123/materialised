class Order < ApplicationRecord
  belongs_to :driver
  belongs_to :user
  has_many :baskets, dependent: :destroy
  has_many :materials, through: :baskets
end
