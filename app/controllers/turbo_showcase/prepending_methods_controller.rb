# frozen_string_literal: true

module TurboShowcase
  class PrependingMethodsController < ApplicationController
    def index
      main_folder_for_views = "#{Rails.root}/app/views/turbo_showcase/prepending_methods/components"
      @div_with_id_html = File.open("#{main_folder_for_views}/div_with_id.html.erb").read
      @another_one_html = File.open("#{main_folder_for_views}/_another_one.html.erb").read
    end

    def another_one
      render turbo_stream: turbo_stream.append("some-id-for-append",
                                               partial: "turbo_showcase/appending_methods/components/another_one")
    end

    def sober
      render turbo_stream: turbo_stream.replace("some-id-for-replace",
                                                template: "turbo_showcase/appending_methods/components/div_with_id")
    end
  end
end
