require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "input Store name"
input = gets.chomp

store = Store.create(name: input)

store.errors.each do |message|
  puts "#{message} => #{store.errors[message]}"
end