# frozen_string_literal: true

class Announcement < ApplicationRecord
  include Discard::Model

  # Associations
  has_one_attached :image
  belongs_to :category

  validates :name, presence: true, length: { minimum: 2 }
  validates :content, presence: true, length: { minimum: 2 }
  validate :check_image_presence

  def check_image_presence
    add_error(:image, 'is required') unless image.attached?
  end
end
