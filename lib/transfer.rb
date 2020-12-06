class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount

  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if self.valid? && @sender.balance >= @amount
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = 'complete'
      @amount = 0
    else
      @status = 'rejected'
      "Transaction rejected. Please check your account balance."
    end
  end

  # your code here
end
