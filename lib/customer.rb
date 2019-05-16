class Customer
  attr_accessor :name
  
  @@all = []

  def initialize(name) 
    @name = name 
    @@all << self
  end

  def self.all 
    @@all
  end

  def get_cust
    Transaction.all.select do |trans|
      trans.customer == self
    end
  end

  def locations 
    get_cust.map {|cust| cust.location}
  end

  def transactions 
    get_cust #redundant
  end

  def get_amount
    get_cust.map {|cust| cust.amount}
  end

  def total_spent
    get_amount.inject {|sum, n| sum + n}
  end

end