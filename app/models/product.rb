class Product < ApplicationRecord
  # extend FriendlyId
  # friendly_id :name, use: %i[slugged finders]

  scope :search_by_code, ->(str) { where('code ILIKE ?', "%#{str}%") }
  scope :search_by_name, ->(str) { where('name ILIKE ?', "%#{str}%") }
  scope :search_by_code_and_name, ->(str) { search_by_code(str).or(search_by_name(str)) }

  monetize :price_cents
  monetize :sale_price_cents
  monetize :calculated_price_cents
  monetize :purchase_price_cents

  belongs_to :product_group, inverse_of: :products, optional: true

  scope :with_default_scope, -> { order(:name) }

  def total_amount
    read_attribute(:total_amount).to_i / 100.0
  end

  def stock_balance
    read_attribute(:stock_balance).to_i / 100.0
  end

  def remaining
    read_attribute(:remaining).to_i / 100.0
  end
end
