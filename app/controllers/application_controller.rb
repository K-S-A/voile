class ApplicationController < ActionController::Base
  include ::UnobtrusiveController
  include ::AbilityFilters

  respond_to :html, :js

  # ability_filters

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end

  protect_from_forgery with: :exception
end
