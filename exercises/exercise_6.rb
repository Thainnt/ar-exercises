require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create([
  {:first_name => "Iron", :last_name => "Man", :hourly_rate => 60},
  {:first_name => "Silver", :last_name => "Boy", :hourly_rate => 200},
  {:first_name => "Water", :last_name => "Guest", :hourly_rate => 100}
])

@store2.employees.create([
  {:first_name => "Bronze", :last_name => "Guy", :hourly_rate => 90},
  {:first_name => "Metal", :last_name => "Chap", :hourly_rate => 50},
  {:first_name => "Air", :last_name => "Lady", :hourly_rate => 80}
])