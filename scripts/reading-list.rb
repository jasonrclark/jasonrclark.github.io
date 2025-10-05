#! /usr/bin/env ruby

new_books = ""
recommendations = []

lines = ARGV[0].lines.reject do |line|
  line.strip.empty?
end

lines = lines.each_slice(2).each do |(first_line, second_line)|
  if first_line.downcase.start_with?("+recommend")
    recommendations << second_line.strip
  else
    title = first_line.strip
    author = second_line.strip.gsub(/^Book by /, "")
    author = author.strip.gsub(/^Novel by /, "")
    new_books += "  <li><i>#{title}</i> - #{author}</li>\n"
  end
end

original_content = File.read("./reading.html")

new_content = original_content.sub(/<ol.*>/) do |header|
  if new_books.empty?
    header
  else
    "#{header}\n#{new_books.chomp}"
  end
end

recommended_lines = recommendations.map do |recommend|
  new_content.match(/^.*#{recommend}.*$/)
end

recommended_lines.each do |line|
  original = line.to_s

  replacement = original.sub("<li>", "<li><b>")
  replacement = replacement.sub("</li>", "</b></li>")

  new_content = new_content.sub(original, replacement)
end

File.open("./reading.html", "w") do |file|
  file.puts(new_content)
  file.close()
end
