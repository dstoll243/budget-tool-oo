 # TRANSACTION TRACKER OO

# Write out your transaction class and methods

class Transaction
  attr_reader :user, :location
  attr_accessor :amount

  @@all = []

  def initialize(user, location, amount)
    @user = user
    @location = location
    @amount = amount

    @@all << self
  end

  def self.all
    @@all
  end
end
