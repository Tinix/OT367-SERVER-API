# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  discarded_at :datetime
#  email        :string           not null
#  first_name   :string           not null
#  last_name    :string           not null
#  password     :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  role_id      :bigint           not null
#
# Indexes
#
#  index_users_on_discarded_at  (discarded_at)
#  index_users_on_email         (email) UNIQUE
#  index_users_on_role_id       (role_id)
#
# Foreign Keys
#
#  fk_rails_...  (role_id => roles.id)
#
class User < ApplicationRecord
  include Discard::Model

  # Associations
  belongs_to :role
  has_one_attached :image

  # Validations
  validates :email, presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP,
                              message: 'must be a valid email address' },
                    uniqueness: { case_sensitive: false }

  validates :first_name, presence: true, length: { in: 2..15 }
  validates :last_name, presence: true, length: { in: 2..15 }
  validates :password, presence: true, length: { in: 6..15 }
end
