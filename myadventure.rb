
# use blocks, get.chomp, yield
def intro
  puts "."*30
  puts ".......Yawn, yawn, yawn......."
  puts "."*30
  puts ".....Who am I? Where am I?...."
  puts ".....What am I doing here....."
  puts "..Maybe I should look around.."
  puts "."*30
  puts "."*30
  puts "."*30
  sleep(5)
  system("clear")
end

def first_choice
  puts "oooo I see a knife & a beetroot"
  puts "    which should I choose?"
  puts "          [1] knife"
  puts "          [2] beetroot"
end

def error_message
  puts "   That is not an option!   "
  puts "         Try again"
  sleep(2)
  system("clear")
  runner = 2
end

# methods involving knife narratif
def knife_initial
  runner = 2
  puts "....................................."
  puts "Really a knife, thats pretty useless!"
  puts "....................................."
  puts "....Oh the handle has a name on it..."
  puts "..Jon...mmmm...maybe thats our name.."
  puts "....................................."
  puts ".I should find something to us it on."
  puts "....................................."
  sleep(6)
  system("clear")

  while runner == 2
    knife_option
    answer_two = gets.chomp.to_i
    if answer_two == 1
      system("clear")
      knife_second_hair
      runner = 3
    elsif answer_two == 2
      system("clear")
      knife_second_beard
      runner = 3
    else
      error_message
    end
  end
end

def knife_option
  puts "...................................."
  puts ".maybe I should give myselve a trim."
  puts "...................................."
  puts "...................................."
  puts "..............________.............."
  puts "...........[[[88888888]]]..........."
  puts "..........[[[8        8]]].........."
  puts ".........[[[8  O    O  8]]]........."
  puts ".........||88          88||........."
  puts ".........||88   (..)   88||........."
  puts ".........|||8   ____   8|||........."
  puts ".........|||l8        8l|||........."
  puts ".........||..l88888888l..||........."
  puts ".........|....llllllll....|........."
  puts "...............llllll..............."
  puts "................llll................"
  puts "...................................."
  puts "...................................."
  puts "...................................."
  puts "........What should I trim?........."
  puts ".............[1] hair..............."
  puts ".............[2] beard.............."
  puts "...................................."
end

def knife_second_hair
  puts "...................................."
  puts "................TADA................"
  puts "...................................."
  puts "...................................."
  puts "..............||||||||.............."
  puts "..............88888888.............."
  puts ".............8        8............."
  puts "............8  O    O  8............"
  puts "...........88          88..........."
  puts "...........88   (..)   88..........."
  puts "............8   ____   8............"
  puts "............l8        8l............"
  puts ".............l88888888l............."
  puts "..............llllllll.............."
  puts "...............llllll..............."
  puts "................llll................"
  puts "...................................."
  puts "...................................."
  sleep(3)
end

def knife_second_beard
  puts "...................................."
  puts "................TADA................"
  puts "...................................."
  puts "...................................."
  puts "..............________.............."
  puts "...........[[[88888888]]]..........."
  puts "..........[[[8        8]]].........."
  puts ".........[[[8  O    O  8]]]........."
  puts ".........||88          88||........."
  puts ".........||88   (..)   88||........."
  puts ".........|||8   ____   8|||........."
  puts ".........|||.8        8.|||........."
  puts ".........||...88888888...||........."
  puts ".........|................|........."
  puts "...................................."
  puts "...................................."
  puts "...................................."
  puts "...................................."
  sleep(3)
end

# methods involving beetroot narratif
def beetroot_initial
  runner = 2
  puts "....................................."
  puts ".......Beetroot! Great choice!!......"
  puts "....................................."
  puts "....My mother always told me that...."
  puts ".all one needs in life is a beetroot."
  puts "....................................."
  puts "....................................."
  sleep(6)
  system("clear")

  while runner == 2
    beetroot_option
    answer_two = gets.chomp.to_i
    if answer_two == 1
      system("clear")
      beetroot_second_fire
      runner = 3
    elsif answer_two == 2
      system("clear")
      beetroot_second_tree
      runner = 3
    else
      error_message
    end
  end
end

def beetroot_option
  puts "....................................."
  puts "......Sooo many beetroot options....."
  puts "....................................."
  puts "...............Should I?............."
  puts "............[1] make fire............"
  puts "........[2] use to climb tree........"
  puts "....................................."
end

def beetroot_second_fire
  puts ".................................."
  puts ".I made fire, the purple glow has."
  puts "....attracted a ship! I'm free...."
  puts ".................................."
end

def beetroot_second_tree
  puts "....................................."
  puts "I see a ship! Its coming to save us!!"
  puts "....................................."
end

# **MY ADVENTURE**
runner = 0
intro
until runner == 1
  first_choice
  answer_one = gets.chomp.to_i
  if answer_one == 1
    knife_initial
    runner = 1
  elsif answer_one == 2
    beetroot_initial
    runner = 1
  else
    error_message
  end
end
