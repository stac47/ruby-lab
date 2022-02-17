#!/usr/bin/env ruby

begin
  42 / 0
rescue ZeroDivisionError =>exc
  puts "#{exc.class}:#{exc.message}"
end
