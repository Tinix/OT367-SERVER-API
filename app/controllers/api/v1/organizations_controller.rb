# frozen_string_literal: true

#
# organizations_controller.rb
# Copyright (C) 2023 Daniel Tinivella <tinix@debian>
#
# Distributed under terms of the MIT license.
#
module Api
  module V1
    class OrganizationsController < ApplicationController
      def create
        @organization = Organization.create(organization_params)
        render json: serializable_organization, status: :created
      end

      private

      def organization_params
        params.require(:organization).permit(:name, :email, :welcome_text, :address, :phone,
                                             :about_us_text, :image)
      end
    end
  end
end
