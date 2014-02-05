module ActiveNetsuite

class Account < Record
  def income_account
    incomeAccount.type = 'account'
    incomeAccount
  end
end

end

