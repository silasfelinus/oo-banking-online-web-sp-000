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
    if sender.status == 'closed'
      "Transaction rejected. Please check your account balance."
    else
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = 'complete'
      @amount = 0
    end
  end

  # your code here
end
