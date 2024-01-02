# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id           :bigint           not null, primary key
#  description  :string
#  discarded_at :datetime
#  name         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_categories_on_discarded_at  (discarded_at)
#
class Category < ApplicationRecord
  has_one_attached :image

  # Associations
  has_many :announcements, dependent: :destroy

  # Validations
  validates :name, presence: true, length: { minimum: 3 }
  validates :description, length: { minimum: 3 }
end
