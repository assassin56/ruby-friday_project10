require 'rails_helper'

describe "the process in adding a product" do
  it "adds a new product" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => "Pizza"
    fill_in 'Cost', :with => "14"
    fill_in 'Country', :with => "United States"
    click_on 'Create Product'
    expect(page).to have_content "This Test Should Fail!"
  end
end