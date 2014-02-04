module ActiveNetsuite

class CashRefund < ActiveNetsuite::Record
  class << self
    def basic_search_class
      ActiveNetsuite::TransactionSearchBasic
    end
  end
end

end

