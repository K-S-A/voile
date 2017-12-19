class ApplicationRecord < ActiveRecord::Base
  acts_as_paranoid

  self.abstract_class = true

  scope :with_default_scope, -> { order(:created_at) }
end
