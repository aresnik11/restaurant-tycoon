require "pry"
require_relative '../config/environment.rb'

r1 = Restaurant.new("Sweetgreen")
r2 = Restaurant.new("Chopt")
r3 = Restaurant.new("McDonald's")

l1 = r1.create_location("UWS", 2000)
l2 = r1.create_location("UES", 2500)
l3 = r2.create_location("LES", 4000)

e1 = l1.hire_employee("Amy", 25000)
e2 = l2.hire_employee("Bob", 250)
e3 = l2.hire_employee("Jane", 1000)
e4 = l3.hire_employee("John", 2000)

binding.pry