require "rails_helper"


describe "adds a reservation" do
  it "adds a new resrvation" do
    visit themes_path
    click_on 'Add theme'
    fill_in 'Title', :with => 'Theme title'
    fill_in 'Description', :with => 'Theme description'
    click_on 'Create Theme'
    expect(page).to have_content 'Themes'
  end
end
