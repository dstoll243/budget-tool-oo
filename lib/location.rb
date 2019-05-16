class Location

  attr_accessor :name

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def transactions #works!
    Transaction.all.select do |transaction_obj|
      transaction_obj.location == self
    end
    #+ Returns an array of the transactions associated with that location
  end

  def customers #works!
    transactions.collect do |transaction_obj|
      transaction_obj.customer
    end
    #+ Returns an array of customer instances who have purchased from this location
  end

  def unique_customers #works!
    customers.uniq
    #+ Returns an array of all unique customers (ex: if someone has purchased
    #  from here more than once, they would still only show once in this array. There is Ruby method that does this for you that you can google for)
  end

end
