require 'rails_helper'

describe "the process in adding a product" do
  it "adds a new product" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => "Pizza"
    fill_in 'Cost', :with => "14"
    fill_in 'Country', :with => "United States"
    click_on 'Create Product'
    expect(page).to have_content "Product successfully added!"
  end

  it "throws and error when a product property is not provided" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "This should fail"
  end
end