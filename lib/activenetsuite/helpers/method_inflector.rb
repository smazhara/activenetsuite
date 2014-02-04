module ActiveNetsuite

module MethodInflector
  def method_missing(method, *args, &block)
    if self.class.inflected_method_valid?(method)
      send self.class.inflected_method(method), *args, &block
    else
      super
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def inflected_method(method)
      @method = method

      case
      when xmlattr_method?
        convert_xmlattr_method
      when special_method?
        convert_special_method
      else
        convert_regular_method
      end
      remove_instance_variable(:@method)
    end

    def inflected_method_valid?(method)
      instance_methods(false).include?(inflected_method(method))
    end

    private

    def convert_regular_method
      @method = 'is_' + @method.to_s[0..-2] if @method.to_s.end_with?('?')
      @method = @method.to_s.camelize(:lower).to_sym
    end

    def convert_xmlattr_method
      @method = ('xmlattr_' + @method.to_s.camelize(:lower)).to_sym
    end

    def convert_special_method
      @method = special_methods_map[@method]
    end

    def special_methods_map
      {
        custom_fields: :customFieldList
      }
    end

    def special_method?
      special_methods_map.keys.include?(@method)
    end

    def xmlattr_method?
      xmlattr_methods.include?(@method)
    end

    def xmlattr_methods
      xmlattr_getters + xmlattr_setters
    end

    def xmlattr_getters
      %i(internal_id external_id script_id)
    end

    def xmlattr_setters
      xmlattr_getters.map { |getter| (getter.to_s + '=').to_sym }
    end
  end
end

end
