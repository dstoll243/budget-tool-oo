 # TRANSACTION TRACKER OO

# Write out your Location class and methods

class Location
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def transactions
    Transaction.all.filter do |i|
      i.location == self
    end
  end

  def users
    transactions.map do |i|
      i.user
    end
  end

  def unique_customers
    users.uniq
  end

end
