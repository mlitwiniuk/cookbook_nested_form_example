class Recipe < ApplicationRecord
  validates :name, presence: true

  has_many :ingredients, dependent: :destroy

  accepts_nested_attributes_for :ingredients, allow_destroy: true
end
