#!/usr/bin/env ruby
# frozen_string_literal: true

arr1 = [1, 2, 3]
arr2 = %w[a b]
concat_array = arr1 + arr2

expected = [1, 2, 3, 'a', 'b']
exit 1 if concat_array != expected
