# frozen_string_literal: true

require "rails_helper"

RSpec.describe NameOfFile2Component, type: :component do
  subject(:result) { described_class.new(name_of_file2: "file2") }
  context "renders something useful" do
    it { is_expected.to be_rendered }
    it { is_expected.to have_css("div.flex-row") }
  end
end
