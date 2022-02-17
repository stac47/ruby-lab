#!/usr/bin/env ruby

input = gets
numbers = input.split
if numbers.length != 2
  puts "Exactly two numbers are required"
  exit 1
end
sum = 0
numbers.each do |n|
  sum += n.to_i
end
puts sum
