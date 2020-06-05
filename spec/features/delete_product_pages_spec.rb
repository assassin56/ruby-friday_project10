require 'rails_helper'

describe "the process of deleting a product" do
  it "deletes a product" do
    new_product = Product.create!({:name => "Cyber Demon", 
    :cost => 333, 
    :country => "Hell"})
    visit products_path
    click_link "Cyber Demon"
    click_link "Delete"
    expect(page).to have_no_content ""
  end
end