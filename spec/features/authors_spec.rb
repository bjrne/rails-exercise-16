require 'rails_helper'

describe "Authors page", :type => :feature do

  it "should render authors page'" do
    create(:author)
    visit 'authors/1'
    expect(page).to have_text("Author")
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

describe "New authors page", :type => :feature do

  it "should render new authors page" do
    visit new_author_path
    expect(page).to have_text("New Author")
  end

  it "should show an error message if name fields are empty" do
    visit new_author_path
    click_button :create_author
    expect(page).to have_text("First name can't be blank")
    expect(page).to have_text("Last name can't be blank")
  end

end

describe "authors list page", :type => :feature do

  it "should display 'Add author' link" do
    visit authors_path
    expect(page).to have_text("Add author")
  end

end
