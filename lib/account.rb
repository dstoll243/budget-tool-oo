# Write out your account class and methods

class Account
  attr_accessor :balance, :total_transactions

  @@all = []

  def initialize(balance, total_transactions = 0)
    @balance = balance
    @total_transactions = total_transactions
    @@all << self
  end

  def self.all
    @@all
  end

  def display_balance
    puts @balance
  end

end