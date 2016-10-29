require 'rails_helper'

describe "Authors page", :type => :feature do

  it "should render new authors page'" do
    visit new_author_path
    expect(page).to have_text("New Author")
  end

  it "should display first name field" do
    visit new_author_path
    expect(page).to have_text("First name")
  end

  it "should have a submit button" do
    visit new_author_path
    expect(page).to have_button("Create Author")
  end
end
