require 'rails_helper'

describe "New papers page", :type => :feature do

  it "should render new papers page" do
    visit new_paper_path
    expect(page).to have_text("New Paper")
  end

end