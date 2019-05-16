 # TRANSACTION TRACKER OO

# Write out your user class and methods

class User
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def transactions
    Transaction.all.filter do |transaction|
      transaction.user == self
    end
  end

  def locations
    transactions.map do |t|
      t.location
    end
  end

  def total_spent
    total = 0
    transactions.each do |i|
      total += i.amount
    end
    total
  end
end
