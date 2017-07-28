$depth = -1

def log &block, name
  $depth = $depth + 1
  indents = "  " * $depth
  puts indents + "Beginning '" + name + "'..."
  val = block.call
  puts indents + "'" + name + "' finished, returning:"
  puts indents + val
  $depth = $depth - 1
end

log "outer_block" do
  log "some_little_block" do
    log "teeny_tiny_block" do
      "lots of love"
    end
    42
  end
  log "yet_another_block" do
    "I love Indian food!"
  end
  true
end
