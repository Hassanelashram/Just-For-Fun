require 'byebug'

converted_files = []
not_converted_files = []

path = File.expand_path(File.dirname(__dir__))

Dir.foreach(Dir.pwd) do |filename|
  next if filename[0] == '.'

  file_without_extension = File.basename(filename, File.extname(filename))

  if file_without_extension =~ /\A\d+\Z/
    converted_files << file_without_extension.to_i
  else
    extension = File.extname(filename)
    not_converted_files << [filename, extension]
  end
end

counter = converted_files.max || 0

not_converted_files.each do |file|
  counter += 1
  filename = File.basename(file[0], File.extname(file[0]))
  File.rename(file[0], "#{counter}#{file[1]}")
end
