require 'rails_helper'

describe "New papers page", :type => :feature do

  it "should render new papers page" do
    visit new_paper_path
    expect(page).to have_text("New Paper")
  end

  it "should show an error message if name fields are empty" do
    visit new_paper_path
    click_button :create_paper
    expect(page).to have_text("Title can't be blank")
    expect(page).to have_text("Venue can't be blank")
    expect(page).to have_text("Year can't be blank")
    expect(page).to have_text("Year is not a number")
  end
end