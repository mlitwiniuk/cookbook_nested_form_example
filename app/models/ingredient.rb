class Ingredient < ApplicationRecord
  belongs_to :recipe
  validates :name, presence: true

  attr_accessor :fallback_id

  def to_s
    name
  end
end
