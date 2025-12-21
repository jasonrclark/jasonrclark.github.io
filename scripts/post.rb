def create_post(title, category, tags)
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
    tags.each { |tag| file.puts "- #{tag}" }
    file.puts "---"
    file.puts
  end

  file_path
end
