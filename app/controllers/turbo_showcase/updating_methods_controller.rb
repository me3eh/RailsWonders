# frozen_string_literal: true

module TurboShowcase
  class UpdatingMethodsController < ApplicationController
    def index
      main_folder_for_views = "#{Rails.root}/app/views/turbo_showcase/updating_methods/components"
      @main_file_html = File.open("#{main_folder_for_views}/div_with_id.html.erb").read
      @happy_mood_file_html = File.open("#{main_folder_for_views}/_happy_mood.html.erb").read
      @sad_mood_file_html = File.open("#{main_folder_for_views}/_sad_mood.html.erb").read

      @controller_file_ruby = File.open("#{Rails.root}/app/controllers/turbo_showcase/updating_methods_controller.rb").read
    end

    def sad_mood
      render turbo_stream: turbo_stream.update("some-id-for-update",
                                               partial: "turbo_showcase/updating_methods/components_for_update/happy_mood")
    end

    def happy_mood
      render turbo_stream: turbo_stream.update("some-id-for-update",
                                               partial: "turbo_showcase/updating_methods/components_for_update/sad_mood")
    end
  end
end
