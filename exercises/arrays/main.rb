#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :
# frozen_string_literal: true

arr = []
arr << 3
arr.push 2
arr << 1

exit 1 if arr.first != 3
exit 1 if arr[1] != 2
exit 1 if arr.last != 1

arr.insert(1, 0)

exit 1 if arr[1] != 0
exit 1 if arr.length != 4

arr.delete_at(1)

exit 1 if arr[1] != 2
exit 1 if arr.length != 3

arr.delete_if { |n| n > 2 }
exit 1 if arr.length != 2
