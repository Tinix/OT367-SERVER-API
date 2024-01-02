# frozen_string_literal: true

#
# announcements_controller.rb
# Copyright (C) 2024 Daniel Tinivella <tinix@debian>
#
# Distributed under terms of the MIT license.
#
module Api
  module V1
    class AnnouncementsController < ApplicationController
      def index
        render json: Announcement.all
      end
    end
  end
end
