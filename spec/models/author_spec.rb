require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "Author model" do
    it "saves a new author" do
      @author = create(:author)
      expect(@author).not_to be_nil
    end
  end
end
