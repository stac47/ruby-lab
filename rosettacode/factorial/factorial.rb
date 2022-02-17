#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :

def factorial(n)
  raise ArgumentError, "input must be positive, got '#{n}'" if n < 0
  return 1 if n.between?(0,1)
  n * factorial(n-1)
end

n = gets().to_i
begin
  puts factorial(n)
rescue
  puts "Negative argument provided"
  exit 1
end
