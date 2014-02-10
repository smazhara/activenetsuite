module ActiveNetsuite

class SearchDate < ::String
  def self.make(operator)
    (name + '::' + operator.to_s.camelize).constantize
  end
end

end
