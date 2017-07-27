Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar".
  if pic_number < 10
    new_name = "#{batch_name}0#{pic_number}.jpg"
    tail = 0
    if new_name.exist?
      puts "Overwrite existing file? (Y/N)"
      if gets.chomp.upcase == "N"
        puts "Enter new name for file:"
        new_name = gets.chomp
      end
    end
  else
    new_name = "#{batch_name}#{pic_number}.jpg"
    tail = 0
    if new_name.exist?
      puts "Overwrite existing file? (Y/N)"
      if gets.chomp.upcase == "N"
        puts "Enter new name for file:"
        new_name = gets.chomp
      end
    end
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
puts 'Done'
