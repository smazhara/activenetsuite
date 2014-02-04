module ActiveNetsuite

class NonInventorySaleItem < ActiveNetsuite::Record
  def self.basic_search_class
    ActiveNetsuite::ItemSearchBasic
  end
end

end

