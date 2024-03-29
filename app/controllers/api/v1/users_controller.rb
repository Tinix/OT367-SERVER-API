# frozen_string_literal: true

# users_controller.rb
# Copyright (C) 2024 Daniel Tinivella <tinix@debian>
#
# Distributed under terms of the MIT license.
#
module Api
  module V1
    class UsersController < ApplicationController
      def create
        @user = User.new(user_params)
        user.role = Role.create_or_find_by(name: 'user', description: 'application user')
        @user.token = JsonWebToken.encode(user_id: @user.id)

        if @user.save
          UserMailer.with(user: @user).welcome_email.deliver_now
          render json: @user, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :password)
      end
    end
  end
end
