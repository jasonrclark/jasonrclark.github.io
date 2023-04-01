#! /usr/bin/env ruby

new_books = ""

lines = ARGV[0].lines.reject do |line|
  line.strip.empty?
end

lines = lines.each_slice(2).each do |(title, author)|
  title = title.strip
  author = author.strip.gsub(/^Book by /, "")
  author = author.strip.gsub(/^Novel by /, "")
  new_books += "  <li><i>#{title}</i> - #{author}</li>\n"
end

original_content = File.read("./reading.html")

new_content = original_content.sub(/<ol.*>/) do |header|
  "#{header}\n#{new_books.chomp}"
end

File.open("./reading.html", "w") do |file|
  file.puts(new_content)
  file.close()
end
