#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :

def crypt(input)
  cols = Math.sqrt(input.length).ceil
  square_array = Array.new(cols) {""}
  input.split("").each_with_index do |s, i|
    square_array[i%cols] << s
  end
  square_array.join(" ")
end

def main
  if ARGV.empty?
    input = gets
  else
    input = ARGV.join
  end
  input = input.delete(" ").downcase().chomp
  puts crypt(input)
end

main
