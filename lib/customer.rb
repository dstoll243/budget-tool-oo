
class Customer

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def transactions #works!
    Transaction.all.select do |transaction_obj|
      transaction_obj.customer == self
    end
    # Returns an array of the transactions associated with that customer
  end

  def locations #works!
    transactions.collect do |transaction_obj|
      transaction_obj.location
    end
    # Returns an array of location instances that a customer has shopped at
  end

  def total_spent #works!
    transactions.collect do |transaction_obj|
      transaction_obj.amount
    end.sum
    # totals and returns the total amount that a user has spent at various locations
  end

end
