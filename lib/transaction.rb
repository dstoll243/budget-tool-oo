
class Transaction

  attr_accessor :customer, :location, :amount

  @@all = []

  def initialize(customer, location, amount)
    @@all << self
    @customer = customer
    @location = location
    @amount = amount
  end

  def self.all
    @@all
  end

end
