require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Add validations to two models to enforce the following business rules:
# Employees must always have a first name present
# Employees must always have a last name present
# Employees have a hourly_rate that is a number (integer) between 40 and 200
# Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
# Stores must always have a name that is a minimum of 3 characters
# Stores have an annual_revenue that is a number (integer) that must be 0 or more

# BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
# Ask the user for a store name (store it in a variable)
# Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
# Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record

# class EmployeeValidator < Employee
#     validates :first_name, presence: true
#     validates :last_name, presence: true
# end

employee = @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
employee2 = Employee.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

if employee.valid?
  puts "Valid"
else
  puts "Invalid"
end

if employee2.valid?
  puts "Valid"
else
  puts "Invalid"
end

store = Store.create(name: 'Burnaby', annual_revenue: 0, mens_apparel: true, womens_apparel: true)
store2 = Store.create(name: 'Burnaby', annual_revenue: 100, mens_apparel: true, womens_apparel: true)

if store.valid?
  puts "Valid"
else
  puts "Invalid"
end

if store2.valid?
  puts "Valid"
else
  puts "Invalid"
end