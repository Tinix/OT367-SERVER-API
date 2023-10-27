# frozen_string_literal: true

#
# roles_controller.rb
# Copyright (C) 2023 tinix <tinix@debian>
#
# Distributed under terms of the MIT license.
#
module Api
  module V1
    class RolesController < ApplicationController
      # GET /roles
      def index
        @roles = Role.kept

        render json: RoleSerializer.new(@roles).serializable_hash
      end

      # GET /roles/1
      def show
        render json: serialize_role
      end

      # POST /roles
      def create
        @role = Role.new(role_params)

        if @role.save
          render json: serializable_role, status: :created
        else
          render json: @role.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /roles/1
      def update
        if @role.update(role_params)
          render json: serialize_role
        else
          render json: @role.errors, status: :unprocessable_entity
        end
      end

      # DELETE /roles/1
      def destroy
        @role.discard
      end

      private

      def set_role
        @role = Role.kept.find(params[id])
      end

      def roles_params
        params.require(:role).permit(:name, :description)
      end

      def serialize_role
        RoleSerializer.new(@role).serializable_hash.to_json
      end
    end
  end
end
