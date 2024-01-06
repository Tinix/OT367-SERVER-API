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
FactoryBot.define do
  factory :testimonial do
    name { 'MyString' }
    content { 'MyText' }
  end
end
