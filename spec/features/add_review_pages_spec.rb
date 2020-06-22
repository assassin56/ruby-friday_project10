require 'rails_helper'

describe "the process in adding a review" do

  before :each do
    new_user = User.create!({:email => "codrocks.cruz3@gmail.com", :password => "password", :password_confirmation => "password", :admin => true})
  end

  it "adds a review to the product" do
    new_product = Product.create!({:name => "Doom Guy", 
    :cost => "666", 
    :country => "United Aerospace Corporation"})
    visit signin_path
    fill_in 'Email', :with => "codrocks.cruz3@gmail.com"
    fill_in 'Password', :with => "password"
    click_on 'Sign in'
    visit products_path
    click_link 'Doom Guy', :match => :first
    click_link 'Add a review'
    fill_in 'Author', :with => "John Romero"
    fill_in 'Content body', :with => "I was not very happy with this product. All it did was rip and tear my carpet. I am a very displeased customer and I demand a refund"
    fill_in 'Rating', :with => 2
    click_on 'Create Review'
    expect(page).to have_content 'John Romero'
  end
end