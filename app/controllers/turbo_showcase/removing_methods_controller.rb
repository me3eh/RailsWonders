# frozen_string_literal: true

module TurboShowcase
  class RemovingMethodsController < ApplicationController
    def index
      main_folder_for_views = "#{Rails.root}/app/views/turbo_showcase/removing_methods"
      @index_html = File.open("#{main_folder_for_views}/index.html.erb").read
      @div_with_id_html = File.open("#{main_folder_for_views}/components/div_with_id.html.erb").read

      @controller_file_ruby =
        File.open("#{Rails.root}/app/controllers/turbo_showcase/removing_methods_controller.rb").read
    end

    def disappear
      render turbo_stream: turbo_stream.remove("some-id-for-remove")
    end

    def appear
      render turbo_stream: turbo_stream.replace("some-id-for-replace",
                                                template: "turbo_showcase/removing_methods/components/div_with_id")
    end
  end
end
