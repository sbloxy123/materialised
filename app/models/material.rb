class Material < ApplicationRecord
  has_many :suppliers, dependent: :destroy
end
