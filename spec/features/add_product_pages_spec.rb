require 'rails_helper'

describe "the process in adding a product" do

  before :each do
    new_user = User.create!({:email => "codrocks.cruz3@gmail.com", :password => "password", :password_confirmation => "password", :admin => true})
  end

  it "adds a new product" do
    visit signin_path
    fill_in 'Email', :with => "codrocks.cruz3@gmail.com"
    fill_in 'Password', :with => "password"
    click_on 'Sign in'
    click_on 'Return to products'
    click_on 'Create new product'
    fill_in 'Name', :with => "Pizza"
    fill_in 'Cost', :with => "14"
    fill_in 'Country', :with => "United States"
    click_on 'Create Product'
    expect(page).to have_content "Product successfully added!"
  end

  it "throws and error when a product property is not provided" do
    visit signin_path
    fill_in 'Email', :with => "codrocks.cruz3@gmail.com"
    fill_in 'Password', :with => "password"
    click_on 'Sign in'
    click_on 'Return to products'
    click_on 'Create new product'
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end