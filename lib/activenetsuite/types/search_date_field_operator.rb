module ActiveNetsuite

class SearchDateFieldOperator < ::String
  def self.make(operator)
    (name + '::' + operator.to_s.camelize).constantize
  end
end

end
