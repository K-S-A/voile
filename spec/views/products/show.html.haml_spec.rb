# require 'rails_helper'
#
# RSpec.describe "products/show", type: :view do
#   before(:each) do
#     @product_group = create :product_group
#     @product = assign(:product, Product.create!(
#       :product_group => @product_group,
#       :name => "Name",
#       :description => "MyText",
#       :code => "Code",
#       :stock_balance => 2,
#       :rack => "Rack",
#       :row => "Row",
#       :shelf => "Shelf",
#       :price => 3,
#       :sale_price => 4,
#       :comment => "MyText",
#       :height => 5,
#       :total_amount => 6,
#       :showcase => "Showcase",
#       :measured => false,
#       :workshop => "Workshop",
#       :purchase_price => 7,
#       :ratio => 8.5,
#       :calculated_price => 9,
#       :hidden_comments => "MyText"
#     ))
#   end
#
#   it "renders attributes in <p>" do
#     render
#     expect(rendered).to match(//)
#     expect(rendered).to match(/Name/)
#     expect(rendered).to match(/MyText/)
#     expect(rendered).to match(/Code/)
#     expect(rendered).to match(/2/)
#     expect(rendered).to match(/Rack/)
#     expect(rendered).to match(/Row/)
#     expect(rendered).to match(/Shelf/)
#     expect(rendered).to match(/3/)
#     expect(rendered).to match(/4/)
#     expect(rendered).to match(/MyText/)
#     expect(rendered).to match(/5/)
#     expect(rendered).to match(/6/)
#     expect(rendered).to match(/Showcase/)
#     expect(rendered).to match(/false/)
#     expect(rendered).to match(/Workshop/)
#     expect(rendered).to match(/7/)
#     expect(rendered).to match(/8.5/)
#     expect(rendered).to match(/9/)
#     expect(rendered).to match(/MyText/)
#   end
# end
