# frozen_string_literal: true

require "rails_helper"

RSpec.describe NameOfFileComponent, type: :component do
  let(:name_of_file) { "file" }
  let(:file_content) { "<p>Huhu</p>" }
  let(:file_type) { "html" }
  subject(:result) do
    described_class.new(name_of_file: name_of_file,
                        file_content: file_content,
                        file_type: file_type )
  end

  context "when trying to render the component" do
    it "renders something useful" do
      expect(
        render_inline(result).css("p").to_html
      ).to include(
        "Hello, components!"
      )
    end
  end
end
