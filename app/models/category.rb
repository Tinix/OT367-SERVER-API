# frozen_string_literal: true

class Category < ApplicationRecord
  has_one_attached :image

  # Validations
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :description, length: { minimum: 3 }
end
