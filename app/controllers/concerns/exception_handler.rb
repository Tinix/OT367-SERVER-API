# frozen_string_literal: true

#
# exception_handler.rb
# Copyright (C) 2024 Daniel Tinivella <tinix@debian>
#
# Distributed under terms of the MIT license.
#
module ExceptionHandler
  extend ActiveSupport::Concern

  class AuthenticationError < StandardError; end

  included do
    rescue_from ExceptionHandler::AuthenticationError, with: :handle_unauthenticated
    rescue_from ActiveRecord::RecordNotFound do |e|
      render json: { message: e.message }, status: :not_found
    end
    rescue_from ActiveRecord::RecordInvalid, with: :four_twenty_two
    rescue_from ActionController::ParameterMissing do |e|
      render json: { error: e.message }, status: :bad_request
    end
  end

  private

  def handle_unauthenticated
    render json: { ok: false }, status: :unauthorized
  end

  def four_twenty_two(errors)
    render json: { message: errors.message }, status: :unprocessable_entity
  end
end
