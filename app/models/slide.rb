# == Schema Information
#
# Table name: slides
#
#  id              :bigint           not null, primary key
#  discarded_at    :datetime
#  order           :integer          not null
#  text            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint           not null
#
# Indexes
#
#  index_slides_on_discarded_at               (discarded_at)
#  index_slides_on_organization_id            (organization_id)
#  index_slides_on_organization_id_and_order  (organization_id,order) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (organization_id => organizations.id)
#
class Slide < ApplicationRecord
  include Discard::Model

  # Associations
  has_one_attached :image
  belongs_to :organization

  # Validations
  validates :order, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def check_image_presence
    errors.add(:image, 'is required') unless image.attached?
  end
end
