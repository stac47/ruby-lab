#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :
# frozen_string_literal: true

begin
  42 / 0
rescue ZeroDivisionError => e
  puts "#{e.class}:#{e.message}"
end
