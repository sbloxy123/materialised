class Order < ApplicationRecord
  belongs_to :driver, optional: true
  belongs_to :user
  has_many :baskets, dependent: :destroy

  monetize :amount_cents
end
