 # TRANSACTION TRACKER OO

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

l1 = Location.new("lo1")
l2 = Location.new("lo2")
l3 = Location.new("lo3")

c1 = Customer.new("n1")
c2 = Customer.new("n2")
c3 = Customer.new("n3")

t1 =  Transaction.new(c1, l1, 45)
t2 =  Transaction.new(c2, l2, 5)
t3 =  Transaction.new(c3, l3, 25)
t4 =  Transaction.new(c1, l1, 25)


binding.pry
0
