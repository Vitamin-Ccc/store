class Store < ApplicationRecord
  # dependent: :destroy will destroy all associated items if the store is destroyed.
  has_many :items, dependent: :destroy
end
