# frozen_string_literal: true

module I18nHelper
  def plur(object, count = 2)
    return object.model_name.human(count: count) if object.respond_to? :model_name
    return plur(object.object, attr_name, options) if object.respond_to? :object
    return plur(object.to_s.classify.constantize, attr_name, options) if object.is_a?(Symbol)
    return plur(object.class, attr_name, options) if object.class.respond_to? :human_attribute_name
  end
  alias pl plur

  def translate_with_lookup(key, options = {})
    options = options.dup.reverse_merge(html: true)

    lookup_keys = scope_keys_by_controller(key.to_s, options.delete(:lookup))
    if options.delete(:html)
      lookup_keys = lookup_keys.flat_map { |k| ["#{k}.html", k] }
    end
    lookup_keys.map!(&:to_sym)
    translate(
      lookup_keys[0],
      options.reverse_merge(default_interpolations(options)).merge(
        default: lookup_keys[1..-1] + Array.wrap(options[:default])
      )
    )
  end
  alias t translate_with_lookup
  alias th translate_with_lookup

  private def scope_keys_by_controller(key, custom_lookup_context = nil)
    return Array.wrap(key) unless key.starts_with?('#')
    rest = key[1..-1]

    if custom_lookup_context
      resolved_context(custom_lookup_context, rest)
    elsif lookup_context
      resolved_context(lookup_context.prefixes, rest)
    else
      raise "Cannot use t(#{key.inspect}) shortcut because path is not available"
    end
  end

  private def default_interpolations(options)
    model_name = resolved_model_name(options)

    model_name = if model_name
                   OpenStruct.new(model: model_name.human(count: 1), models: model_name.human(count: 2))
                 else
                   OpenStruct.new(model: controller_name, models: controller_name.pluralize)
                 end

    {
      :model => model_name.model,
      :models => model_name.models,
      :Model => model_name.model.titleize,
      :Models => model_name.models.titleize
    }
  end

  private def resolved_context(custom_lookup_context, rest)
    Array.wrap(custom_lookup_context).map do |cp|
      "#{cp.gsub(%r{/_?}, '.')}.#{rest}"
    end
  end

  private def resolved_model_name(options)
    options.delete(:model) ||
    options.delete(:klass).try(:model_name) ||
    (defined?(resource_class) ? resource_class.model_name : nil)
  end
end
