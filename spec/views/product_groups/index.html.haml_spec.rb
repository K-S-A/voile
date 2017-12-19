# require 'rails_helper'
#
# RSpec.describe "product_groups/index", type: :view do
#   before(:each) do
#     assign(:product_groups, [
#       ProductGroup.create!(
#         :slug => "Slug",
#         :name => "Name",
#         :description => "Description"
#       ),
#       ProductGroup.create!(
#         :slug => "Slug",
#         :name => "Name",
#         :description => "Description"
#       )
#     ])
#   end
#
#   it "renders a list of product_groups" do
#     render
#     assert_select "tr>td", :text => "Slug".to_s, :count => 2
#     assert_select "tr>td", :text => "Name".to_s, :count => 2
#     assert_select "tr>td", :text => "Description".to_s, :count => 2
#   end
# end
