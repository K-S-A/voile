# require 'rails_helper'
#
# RSpec.describe "products/edit", type: :view do
#   before(:each) do
#     @product_group = create :product_group
#     @product = assign(:product, Product.create!(
#       :product_group => @product_group,
#       :name => "MyString",
#       :description => "MyText",
#       :code => "MyString",
#       :stock_balance => 1,
#       :rack => "MyString",
#       :row => "MyString",
#       :shelf => "MyString",
#       :price => 1,
#       :sale_price => 1,
#       :comment => "MyText",
#       :height => 1,
#       :total_amount => 1,
#       :showcase => "MyString",
#       :measured => false,
#       :workshop => "MyString",
#       :purchase_price => 1,
#       :ratio => 1.5,
#       :calculated_price => 1,
#       :hidden_comments => "MyText"
#     ))
#   end
#
#   it "renders the edit product form" do
#     render
#
#     assert_select "form[action=?][method=?]", product_path(@product), "post" do
#
#       assert_select "input[name=?]", "product[name]"
#
#       assert_select "textarea[name=?]", "product[description]"
#
#       assert_select "input[name=?]", "product[code]"
#
#       assert_select "input[name=?]", "product[stock_balance]"
#
#       assert_select "input[name=?]", "product[rack]"
#
#       assert_select "input[name=?]", "product[row]"
#
#       assert_select "input[name=?]", "product[shelf]"
#
#       assert_select "input[name=?]", "product[price]"
#
#       assert_select "input[name=?]", "product[sale_price]"
#
#       assert_select "textarea[name=?]", "product[comment]"
#
#       assert_select "input[name=?]", "product[height]"
#
#       assert_select "input[name=?]", "product[total_amount]"
#
#       assert_select "input[name=?]", "product[showcase]"
#
#       # assert_select "input[name=?]", "product[measured]"
#
#       assert_select "input[name=?]", "product[workshop]"
#
#       assert_select "input[name=?]", "product[purchase_price]"
#
#       assert_select "input[name=?]", "product[ratio]"
#
#       assert_select "input[name=?]", "product[calculated_price]"
#
#       assert_select "textarea[name=?]", "product[hidden_comments]"
#     end
#   end
# end
