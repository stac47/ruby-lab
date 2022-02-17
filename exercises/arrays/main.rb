#!/usr/bin/env ruby
## vi: set fileencoding=utf-8 :

arr = []
arr << 3.14
arr.push 2.78
arr << Math.sqrt(2)

exit 1 if arr.first != 3.14
exit 1 if arr[1] != 2.78
exit 1 if arr.last != Math.sqrt(2)

arr.insert(1, 0.0)

exit 1 if arr[1] != 0.0
exit 1 if arr.length != 4

arr.delete_at(1)

exit 1 if arr[1] != 2.78
exit 1 if arr.length != 3

arr.delete_if { |n| n > 3 }
exit 1 if arr.length != 2
