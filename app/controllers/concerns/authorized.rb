# frozen_string_literal: true

#
# authorized.rb
# Copyright (C) 2024 Daniel Tinivella <tinix@debian>
#
# Distributed under terms of the MIT license.
#
module Authorized
  def admin?
    @current_user.role.name == 'admin'
  end

  def owner?
    params[:id].to_i == @current_user.id
  end

  def ownership?
    render json: { errors: 'Unauthorized access' }, status: :forbidden unless admin? || owner?
  end
end
