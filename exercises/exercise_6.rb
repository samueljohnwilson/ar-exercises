require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sam", last_name: "Wilson", hourly_rate: 60)
@store1.employees.create(first_name: "Joe", last_name: "McDonald", hourly_rate: 60)
@store2.employees.create(first_name: "Jim", last_name: "Davis", hourly_rate: 60)
@store2.employees.create(first_name: "Bob", last_name: "Rogers", hourly_rate: 60)
@store1.employees.create(first_name: "Cathy", last_name: "King", hourly_rate: 60)
@store2.employees.create(first_name: "Sue", last_name: "Paul", hourly_rate: 60)
@store1.employees.create(first_name: "Wendy", last_name: "Rogers", hourly_rate: 60)

for employee in @store1.employees
  puts "#{employee.first_name} #{employee.last_name}"
end

for employee in @store2.employees
  puts "#{employee.first_name} #{employee.last_name}"
end