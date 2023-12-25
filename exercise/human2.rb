def hello #①
  puts "Hello World"
end

class Human
  def self.hello #②
    puts "Hello World"
  end

  def hello #③
    puts "Hello World"
  end
end

#①
hello 
#②
Human.hello 
#③
human = Human.new
human.hello