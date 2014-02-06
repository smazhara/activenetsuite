module ActiveNetsuite

class NonInventorySaleItem < ActiveNetsuite::Record
  def self.basic_search_class
    ActiveNetsuite::ItemSearchBasic
  end

  def income_account
    incomeAccount.type = 'account'
    incomeAccount
  end
end

end

