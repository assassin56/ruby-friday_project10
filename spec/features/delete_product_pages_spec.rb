require 'rails_helper'

describe "the process of deleting a product" do
  
  before :each do
    new_user = User.create!({:email => "codrocks.cruz3@gmail.com", :password => "password", :password_confirmation => "password", :admin => true})
  end

  it "deletes a product" do
    new_product = Product.create!({:name => "Cyber Demon", 
    :cost => 333, 
    :country => "Hell"})
    visit signin_path
    fill_in 'Email', :with => "codrocks.cruz3@gmail.com"
    fill_in 'Password', :with => "password"
    click_on 'Sign in'
    visit products_path
    click_link "Cyber Demon", :match => :first
    click_link "Delete"
    expect(page).to have_no_content "Cyber Demon"
  end
end