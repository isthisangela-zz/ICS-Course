def log &block, name
  puts "Beginning '" + name + "'..."
  val = block.call
  puts "'" + name + "' finished, returning:"
  puts val
end

log "outer_block" do
  log "some_little_block" do
    5
  end
  log "yet_another_block" do
    "I like Thai food!"
  end
  false
end
