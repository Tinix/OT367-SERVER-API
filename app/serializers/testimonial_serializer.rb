# frozen_string_literal: true

# == Schema Information
#
# Table name: testimonials
#
#  id         :bigint           not null, primary key
#  content    :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TestimonialSerializer
  include JSONAPI::Serializer
  attributes :name, :content
end
