# frozen_string_literal: true

#
# user_notifier_mailer.rb
# Copyright (C) 2024 Daniel Tinivella <tinix@debian>
#
# Distributed under terms of the MIT license.
#
class UserNotifierMailer < ApplicationMailer
  default from: 'any_from_address@example.com'

  def send_signup_email(user)
    @user = user
    mail(to: @user.email, subject: 'Thanks for signing up!')
  end
end
