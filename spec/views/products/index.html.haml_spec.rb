# require 'rails_helper'
#
# RSpec.describe "products/index", type: :view do
#   before(:each) do
#     @product_group = create :product_group
#     assign(:products, [
#       Product.create!(
#         :product_group => @product_group,
#         :name => "Name",
#         :description => "MyText",
#         :code => "Code",
#         :stock_balance => 2,
#         :rack => "Rack",
#         :row => "Row",
#         :shelf => "Shelf",
#         :price => 3,
#         :sale_price => 4,
#         :comment => "MyText",
#         :height => 5,
#         :total_amount => 6,
#         :showcase => "Showcase",
#         :measured => false,
#         :workshop => "Workshop",
#         :purchase_price => 7,
#         :ratio => 8.5,
#         :calculated_price => 9,
#         :hidden_comments => "MyText"
#       ),
#       Product.create!(
#         :product_group => @product_group,
#         :name => "Name",
#         :description => "MyText",
#         :code => "Code1",
#         :stock_balance => 2,
#         :rack => "Rack",
#         :row => "Row",
#         :shelf => "Shelf",
#         :price => 3,
#         :sale_price => 4,
#         :comment => "MyText",
#         :height => 5,
#         :total_amount => 6,
#         :showcase => "Showcase",
#         :measured => false,
#         :workshop => "Workshop",
#         :purchase_price => 7,
#         :ratio => 8.5,
#         :calculated_price => 9,
#         :hidden_comments => "MyText"
#       )
#     ])
#   end
#
#   it "renders a list of products" do
#     render
#     assert_select "tr>td", :text => nil.to_s, :count => 2
#     assert_select "tr>td", :text => "Name".to_s, :count => 2
#     assert_select "tr>td", :text => "MyText".to_s, :count => 2
#     assert_select "tr>td", :text => "Code".to_s, :count => 2
#     assert_select "tr>td", :text => 2.to_s, :count => 2
#     assert_select "tr>td", :text => "Rack".to_s, :count => 2
#     assert_select "tr>td", :text => "Row".to_s, :count => 2
#     assert_select "tr>td", :text => "Shelf".to_s, :count => 2
#     assert_select "tr>td", :text => 3.to_s, :count => 2
#     assert_select "tr>td", :text => 4.to_s, :count => 2
#     assert_select "tr>td", :text => "MyText".to_s, :count => 2
#     assert_select "tr>td", :text => 5.to_s, :count => 2
#     assert_select "tr>td", :text => 6.to_s, :count => 2
#     assert_select "tr>td", :text => "Showcase".to_s, :count => 2
#     assert_select "tr>td", :text => false.to_s, :count => 2
#     assert_select "tr>td", :text => "Workshop".to_s, :count => 2
#     assert_select "tr>td", :text => 7.to_s, :count => 2
#     assert_select "tr>td", :text => 8.5.to_s, :count => 2
#     assert_select "tr>td", :text => 9.to_s, :count => 2
#     assert_select "tr>td", :text => "MyText".to_s, :count => 2
#   end
# end
