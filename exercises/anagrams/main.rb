#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :
# frozen_string_literal: true

def find_anagrams(input)
  anagrams = Hash.new { |hash, key| hash[key] = [] }
  input.split.each do |word|
    signature = word.split('').sort.join.to_sym
    anagrams[signature] << word unless anagrams[signature].include? word
  end
  anagrams.values.delete_if { |elt| elt.size < 2 }
end

lines = []
until (line = gets).nil?
  lines << line unless line.empty?
end
puts find_anagrams(lines.join).join(', ')
