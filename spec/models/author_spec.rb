require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "Author model" do
    it "saves a new author" do
      @author = create(:author)
      expect(@author).not_to be_nil
    end

    it "returns the full name" do
      @author = create(:author)
      expect(@author.name).to eq(@author.first_name + ' ' + @author.last_name)
    end

    it "returns 'Alan Turing' for specific test data" do
      author = Author.new
      expect(author.name).to be_nil
      author.first_name = 'Alan'
      author.last_name = 'Turing'
      expect(author.name).to eq 'Alan Turing'
    end
  end
end
