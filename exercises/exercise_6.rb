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
@store2.employees.create(first_name: "Fred", last_name: "Virani", hourly_rate: 200)
@store1.employees.create(first_name: "Tom", last_name: "Virani", hourly_rate: 200)
@store1.employees.create(first_name: "Julie", last_name: "Virani", hourly_rate: 200)
@store1.employees.create(first_name: "Todd", last_name: "Virani", hourly_rate: 80)
@store2.employees.create(first_name: "Laura", last_name: "Virani", hourly_rate: 80)
@store1.employees.create(first_name: "Katie", last_name: "Virani", hourly_rate: 80)
@store2.employees.create(first_name: "Chantel", last_name: "Virani", hourly_rate: 40)
@store2.employees.create(first_name: "Peter", last_name: "Virani", hourly_rate: 40)
@store2.employees.create(first_name: "Jim", last_name: "Virani", hourly_rate: 40)
@store2.employees.create(first_name: "Spock", last_name: "Virani", hourly_rate: 40)