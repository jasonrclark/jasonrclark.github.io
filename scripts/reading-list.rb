#! /usr/bin/env ruby

new_books = ""

lines = ARGV[0].lines.reject do |line|
  line.strip.empty?
end

lines = lines.each_slice(2).each do |(title, author)|
  new_books += "  <li><i>#{title.strip}</i> - #{author.strip}</li>\n"
end

original_content = File.read("./reading.html")

new_content = original_content.sub(/<ol.*>/) do |header|
  "#{header}\n#{new_books.chomp}"
end

puts new_content
