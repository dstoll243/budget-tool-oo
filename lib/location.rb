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
    Transaction.all.select do |local| 
      local.location == self
    end
  end

  def customers
    transactions.map {|local| local.customer}
  end

  def unique_customers 
    customers.uniq
  end

end