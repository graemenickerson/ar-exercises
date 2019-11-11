require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
revenue = Store.sum('annual_revenue')

puts revenue

num_of_stores = Store.count()

puts revenue / num_of_stores

num_of_good_stores = Store.where("annual_revenue > 1000000").count()

puts num_of_good_stores