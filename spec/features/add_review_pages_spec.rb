require 'rails_helper'

describe " the process in adding a review" do
  it "adds a review to the product" do
    new_product = Product.create!({:name => "Doom Guy", 
    :cost => "666", 
    :country => "United Aerospace Corporation"})
    visit products_path
    click_link 'Doom Guy'
    click_link 'Add a review'
    fill_in 'Author', :with => "John Romero"
    fill_in 'Content body', :with => "I was not very happy with this product. All it did was rip and tear my carpet. I am a very displeased customer and I demand a refund"
    fill_in 'Rating', :with => 2
    click_on 'Create Review'
    expect(page).to have_content 'John Romero'
  end
end