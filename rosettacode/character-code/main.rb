#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :

def show_code(char)
  puts char.ord
end

def show_char(code)
  puts code.chr
end

def show_usage
  puts "Usage: main.rb --show-code|--show-char arg"
end

def main
  if ARGV.length != 2
    show_usage
    exit 1
  end
  if ARGV[0] == "--show-code"
    show_code ARGV[1]
  elsif ARGV[0] == "--show-char"
    show_char ARGV[1].to_i
  else
    show_usage
    exit 1
  end
end

main
