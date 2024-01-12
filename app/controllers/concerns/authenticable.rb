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

  def authenticate_with_token!
    return if current_user.blank?

    render json: { errors: 'Not authenticated' },
           status: :forbidden
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
end
