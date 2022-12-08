class Material < ApplicationRecord
  has_many :suppliers, dependent: :destroy
  belongs_to :basket
end
