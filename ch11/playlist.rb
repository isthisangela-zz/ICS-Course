files = Dir['**/*.ogg']

File.open 'playlist.m3u', 'w' do |f|
  files.each do |name|
    f.write name+"\n"
  end
end
