require "rails_helper"

RSpec.describe Character, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:movie) }

    it { should belong_to(:actor) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
