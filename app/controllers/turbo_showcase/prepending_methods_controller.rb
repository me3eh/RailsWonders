# frozen_string_literal: true

module TurboShowcase
  class PrependingMethodsController < ApplicationController
    def index
      main_folder_for_views = "#{Rails.root}/app/views/turbo_showcase/prepending_methods"
      components_folder = "#{main_folder_for_views}/components"
      @index_html = File.open("#{main_folder_for_views}/index.html.erb").read
      @div_with_id_html = File.open("#{components_folder}/div_with_id.html.erb").read
      @another_one_html = File.open("#{components_folder}/_another_one.html.erb").read

      @controller_file_ruby =
        File.open("#{Rails.root}/app/controllers/turbo_showcase/prepending_methods_controller.rb").read
    end

    def another_one
      render turbo_stream: turbo_stream.prepend("some-id-for-prepend",
                                               partial: "turbo_showcase/prepending_methods/components/another_one")
    end

    def sober
      render turbo_stream: turbo_stream.replace("some-id-for-replace",
                                                template: "turbo_showcase/prepending_methods/components/div_with_id")
    end
  end
end
