Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar".
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
    tail = 0
    while new_name.exist?
      new_name =  "#{batch_name}0#{pic_number}" + "_" + tail.to_s + ".jpg"
      tail = tail + 1
    end
  else
    "#{batch_name}#{pic_number}.jpg"
    tail = 0
    while new_name.exist?
      new_name =  "#{batch_name}#{pic_number}" + "_" + tail.to_s + ".jpg"
      tail = tail + 1
    end
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
puts 'Done, cutie!'