#!/usr/bin/env ruby
static_filename = "/Users/daniellethompson/soccer-challenge/sample-input.txt"
file = File.open(static_filename)
file_data = file.read
file.close
puts file_data
