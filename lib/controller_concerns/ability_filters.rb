module AbilityFilters
  extend ActiveSupport::Concern

  module ClassMethods
    def ability_filters
      before_action(:authorize_read_resource!, only: :show)
      before_action(:authorize_update_resource!, only: [:edit, :update])
      before_action(:authorize_destroy_resource!, only: :delete)
    end
  end

  private

  def authorize_read_resource!
    authorize!(:read, resource)
  end

  def authorize_update_resource!
    authorize!(:update, resource)
  end

  def authorize_destroy_resource!
    authorize!(:destroy, resource)
  end
end
