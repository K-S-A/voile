class ProductGroup < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: %i[slugged finders]

  normalize_attribute :name, with: :squish

  has_many :products, -> { with_default_scope }, inverse_of: :product_group

  scope :with_default_scope, -> { order(:name) }

  validates :name, presence: true
end
