class BankAccount
  attr_accessor :NAME, :balance, :status

def initialize(name)
  @NAME = name
  @balance = 1000
  @status = 'open'
end

def deposit(amount)
  @balance += amount
end

def display_balance
  @balance
end

def valid?
  @balance > 0 && status == 'open'
end

def close_account
  status = 'closed'
end

end
