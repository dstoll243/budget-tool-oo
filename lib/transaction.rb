# Write out your transaction class and methods

class Transaction
  attr_accessor :user, :account, :location, :amount, :category, :confirmed

  @@all = []

  def initialize(user, account, amount, location=nil)
    @user = user
    @account = account
    @amount = amount
    @location = location

    @@all << self
  end

  def self.all
    @@all
  end

end