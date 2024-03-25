#!/usr/bin/env ruby

require "date"
require "fileutils"

# Get the title and category arguments
title = ARGV[0]
category = ARGV[1] || "blog"

# Validate the number of arguments and show help text if incorrect
if ARGV.length < 1 || ARGV.length > 2
  puts "Usage: ruby new_post.rb title [category]"
  puts "Example: ruby new_post.rb \"My Awesome Post\" coding"
  exit
end

# Generate the file name and path
date = Date.today
file_name = "#{date}-#{title.downcase.gsub(/\s+/, "-")}.md"
file_path = "_posts/#{category}/#{file_name}"

# Create the file with YAML front matter
File.open(file_path, "w") do |file|
  file.puts "---"
  file.puts "title: \"#{title}\""
  file.puts "date: #{date} #{Time.now.strftime("%H:%M:%S")}"
  file.puts "categories: #{category}"
  file.puts "tags:"
  file.puts "- "
  file.puts "---"
  file.puts
end

# Print the file name and path
puts file_path

# Open the file in default editor if the EDITOR ENV variable is set
if ENV["EDITOR"]
  system "#{ENV["EDITOR"]} #{file_path}"
end
