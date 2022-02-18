#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :
# frozen_string_literal: true

def show_code(char)
  puts char.ord
end

def show_char(code)
  puts code.chr
end

def usage_and_exit
  puts 'Usage: main.rb --show-code|--show-char arg'
  exit 1
end

def main
  usage_and_exit if ARGV.length != 2
  case ARGV[0]
  when '--show-code'
    show_code ARGV[1]
  when '--show-char'
    show_char ARGV[1].to_i
  else
    usage_and_exit
    exit 1
  end
end

main
