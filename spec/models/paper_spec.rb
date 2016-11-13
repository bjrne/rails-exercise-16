require 'rails_helper'

RSpec.describe Paper, type: :model do
  describe "Paper model" do
    it "saves a new paper" do
      @paper = FactoryGirl.build(:paper)
      expect(@paper).not_to be_nil
    end

    it "doesn't validate paper without name attributes" do
      paper = Author.new
      expect(paper).to_not be_valid
    end

    it "has and belongs to many authors" do
      @paper = FactoryGirl.build(:paper)
      expect(@paper.authors).not_to be_nil
    end
  end
end
