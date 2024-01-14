# frozen_string_literal: true

y frozen_string_literal: true

#
# categories_controller.rb
# Copyright (C) 2024 Daniel Tinivella <tinix@debian>
#
# Distributed under terms of the MIT license.
#
module Api
  module V1
    class CategoriesController < ApplicationController
      def create
        @category = Category.create(category_params)
        render json: serializable_category, status: :created
      end

      private

      def category_params
        params.require(:category).permit(:name)
      end

      def serializable_category
        CategorySerializer.new(@category).serializable_hash.to_json
      end
    end
  end
end
