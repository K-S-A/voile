# frozen_string_literal: true

module DisplayNameGlipper
  extend ActiveSupport::Concern

  def blank_display_name(_options = {})
    blank_display_name_backward
  end

  def rich_display_name(_options = {})
    blank_display_name_backward
  end

  def blank_display_name_backward
    name_assumption = blank_display_name_assumption
    name_assumption ? resource.public_send(name_assumption) : blank_display_name_default
  end

  def blank_display_name_assumptions
    %w[full_name name title subject]
  end

  def blank_display_name_assumption
    Array.wrap(blank_display_name_assumptions).find do |method_name|
      resource.respond_to?(method_name) && resource.public_send(method_name).presence
    end
  end

  def blank_display_name_default
    o.id ? "#{resource.class.model_name.human} #{resource.id}" : "New #{resource.class.model_name.human}"
  end

  def display_name(options = {})
    options = options.dup
    if options.delete(:rich) { false }
      rich_display_name(options)
    else
      blank_display_name(options)
    end
  end
end
