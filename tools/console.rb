 # TRANSACTION TRACKER OO

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


##customer objects
laura = Customer.new("Laura")
sarah = Customer.new("Sarah")
kev = Customer.new("Kev")
tyler = Customer.new("Tyler")
spock = Customer.new("Spock")

##location objects
moon = Location.new("Moon")
paris = Location.new("Paris")
landfill = Location.new("Landfill")
san_fransicso = Location.new("San Fransisco")

##transaction objects
t1 = Transaction.new(laura, moon, 100)
t2 = Transaction.new(kev, moon, 200)
t3 = Transaction.new(kev, paris, 150)
t4 = Transaction.new(sarah, landfill, 10)
t5 = Transaction.new(tyler, san_fransicso, 1000)
t6 = Transaction.new(spock, landfill, 1)
t7 = Transaction.new(laura, moon, 5)




binding.pry
0
