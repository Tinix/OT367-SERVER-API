# frozen_string_literal: true

#
# authenticable.rb
# Copyright (C) 2024 Daniel Tinivella <tinix@debian>
#
# Distributed under terms of the MIT license.
#
module Authenticable
  def current_user
    @current_user ||= User.find_by(token: request.headers['Authorization'])
  end

  def authenticate_with_token
    return if current_user.blank?

    render json: { errors: 'Not authorized' }, status: :forbidden
  end
end
