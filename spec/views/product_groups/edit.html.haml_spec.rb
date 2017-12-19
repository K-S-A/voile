# require 'rails_helper'
#
# RSpec.describe "product_groups/edit", type: :view do
#   before(:each) do
#     @product_group = assign(:product_group, ProductGroup.create!(
#       :slug => "MyString",
#       :name => "MyString",
#       :description => "MyString"
#     ))
#   end
#
#   it "renders the edit product_group form" do
#     render
#
#     assert_select "form[action=?][method=?]", product_group_path(@product_group), "post" do
#
#       assert_select "input[name=?]", "product_group[name]"
#
#       assert_select "input[name=?]", "product_group[description]"
#     end
#   end
# end
