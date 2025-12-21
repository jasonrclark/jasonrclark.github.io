#!/usr/bin/env ruby

require_relative './post'

# Get the title and category arguments
title = ARGV[0]
category = ARGV[1] || "blog"
tags = ARGV[2..-1] || []

# Validate the number of arguments and show help text if incorrect
if ARGV.length < 1
  puts "Usage: ruby new_post.rb title [category] [tags...]"
  puts "Example: ruby new_post.rb \"My Awesome Post\" coding ruby tutorial"
  exit
end

# Generate the file name and path
file_path = create_post(title, category, tags)

# Print the file name and path
puts file_path

# Open the file in default editor if the EDITOR ENV variable is set
if ENV["EDITOR"]
  system "#{ENV["EDITOR"]} #{file_path}"
end
