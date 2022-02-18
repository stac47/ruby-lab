#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :
# frozen_string_literal: true

def factorial(num)
  raise ArgumentError, "input must be positive, got '#{num}'" if num.negative?
  return 1 if num.between?(0, 1)

  num * factorial(num - 1)
end

n = gets.to_i
begin
  puts factorial(n)
rescue ArgumentError
  puts 'Negative argument provided'
  exit 1
end
