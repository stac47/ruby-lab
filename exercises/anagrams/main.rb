#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :
# frozen_string_literal: true

def find_anagrams(input)
  anagrams = {}
  anagrams.default = []
  input.split.each do |word|
    word = word.chomp
    anagrams[word.split('').sort.join.to_sym] += [word]
  end
  found_anagrams = []
  anagrams.each do |_, value|
    value.uniq!
    found_anagrams << "{#{value.join(', ')}}" if value.length > 1
  end
  found_anagrams
end

lines = []
until (line = gets).nil?
  lines << line unless line.empty?
end
puts find_anagrams(lines.join).join(', ')
