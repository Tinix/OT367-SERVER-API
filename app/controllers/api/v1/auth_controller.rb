# frozen_string_literal: true

#
# auth_controller.rb
# Copyright (C) 2024 Daniel Tinivella <tinix@debian>
#
# Distributed under terms of the MIT license.
#
module Api
  module V1
    class AuthController < ApplicationController
      before_action :login_params, only: [:create]
      before_action :user, only: [:create]

      # POST api/v1/auth/login
      def create
        raise ActionController::Unauthorized unless auth_user

        render json: serialize_user, status: :created
      end

      private

      def auth_user
        @user.authenticate(params[:password])
      end

      def login_params
        params.require(:login).permit(:email, :password)
      end

      def user
        @user = User.find_by(email: params.require(:email))
        render json: { error: 'User not found' }, status: :not_found unless @user
      end

      def serialize_user
        UserSerializer.new(@user).serializable_hash.to_json
      end
    end
  end
end
