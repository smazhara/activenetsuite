module ActiveNetsuite

class DeletedRecord
  include MethodInflector

  alias_method :ref, :record
end

end

