class ProductsController < ApplicationController
  helper_method :query

  unobtrusive resource_class: Product,
              relationship_name: :products,
              find_for_create_by: :id,
              finder_method: :find_by_id!,
              permitted_params_key: :product,
              permitted_params_update_value: %i[
                code name description receipt_date stock_balance rack row shelf
                price sale_price comment height total_amount showcase measured
                workshop purchase_price ratio calculated_price hidden_comments
                product_group_id
              ],
              permitted_params_create_value: %i[
                code name description receipt_date stock_balance rack row shelf
                price sale_price comment height total_amount showcase measured
                workshop purchase_price ratio calculated_price hidden_comments
                product_group_id
              ]
  def index
    respond_with collection
  end

  def show
    respond_with resource
  end

  def edit
    respond_with resource
  end

  def new
    build_resource
    respond_with resource
  end

  def create
    find_or_create_resource
    respond_with resource
  end

  def update
    update_resource
    respond_with resource
  end

  private

  def collection
    @collection ||= begin
      return [] if query.blank?
      end_of_association_chain.search_by_code_and_name(query)
    end
  end

  def query
    @query ||= params[:query]
  end
end
