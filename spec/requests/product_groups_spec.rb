require 'rails_helper'

RSpec.describe "ProductGroups", type: :request do
  describe "GET /product_groups" do
    it "works! (now write some real specs)" do
      get product_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
