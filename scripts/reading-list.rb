#! /usr/bin/env ruby

new_books = ""

lines = ARGV[0].lines.reject do |line|
  line.strip.empty?
end

lines = lines.each_slice(2).each do |(t, a)|
  title = t.strip
  author = a.strip.gsub(/^Book by /, "")
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
