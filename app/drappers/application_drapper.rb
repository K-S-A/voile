# frozen_string_literal: true

class ApplicationDrapper < Glipper::Base
  decorates ::ActiveRecord::Base

  class << self
    def root_classes
      [ActiveRecord::Base, ActiveRecord::Relation, Array]
    end
  end

  include DisplayNameGlipper

  def decorate(another_resource)
    Egg::ApplicationDrapper.decorate(another_resource, helpers)
  end
end
