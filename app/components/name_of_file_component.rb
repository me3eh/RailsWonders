# frozen_string_literal: true

class NameOfFileComponent < ViewComponent::Base
  def initialize(name_of_file:, file_content:, file_type:)
    @name_of_file = name_of_file
    @file_content = file_content
    @file_type = file_type
  end
end
