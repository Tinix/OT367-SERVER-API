# frozen_string_literal: true

# == Schema Information
#
# Table name: roles
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
#  index_roles_on_discarded_at  (discarded_at)
#
require 'rails_helper'

RSpec.describe Role, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
