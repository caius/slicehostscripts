
def output( msg )
  return true if @quiet
  if msg == :created
    puts "\t..created"
  else
    puts msg
  end
  true
end
