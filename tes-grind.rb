puts "Welcome to TES Grind, an unofficial The Elder Scrolls experience!"

puts "Please enter your name: "

devmode = false
name = gets.chomp.capitalize
if name == "Dev"
  puts "Dev mode activated"
  devmode = true
  puts "Player Name:"
  name = gets.chomp.capitalize.strip
end
#takes name from user input, assigns to variable, capitalizes it
puts
puts "#{name}, you are a prisoner on an Imperial prison ship, sailing somewhere along the outskirts of Tamriel."
puts
puts "You are unsure how you ended up here, as you have no recollection of the past few days. Even memories from prior are currently a hazy blur."
puts
puts "As you struggle to recall what led you to this moment, you hear a booming voice from the cell next to yours."
puts 
puts "'Hey, you there! The name's Rurik.....and you are?'"
puts 
puts "..."
puts
puts "'Pleasure to meet ya', #{name}!'"
puts
puts "'Whereabouts are you from then?'"

pcorigin = gets.chomp.capitalize.strip
#takes player origin from user input, assigns to variable, capitalizes it

  if pcorigin.downcase == "skyrim"
    puts
    puts "'Aha! A fellow Skyrim native! Hopefully we can talk about the homeland over a nice mug of spiced mead one day. If we live through this gods-forsaken mess, that is.'"
  else
    puts
    puts "'Ah, from  #{pcorigin} eh? I've never been there myself, but I've heard grand tales from my seafaring friends. I hope we live long enough to share them with ya'"
  end 

  puts
  puts "'Say, what class are you? I'm a bit of a thief myself, though I bet I look the fool considering I got myself locked up here. I'm not the quietest unfortunately, try as I might...'"
  pcclass = gets.chomp.capitalize
#takes player class from user input, assigns to variable

if pcclass.downcase == "stealth archer" || pcclass.downcase == "thief" || pcclass.downcase == "assassin" || pcclass.downcase == "rogue"
  puts
  puts "'Wow, a #{pcclass.downcase}? Sneaky!!'"

elsif pcclass.downcase == "archer"
  puts
  puts "'Huh, an #{pcclass.downcase}? I think some precision fire will be very useful in our immediate future..'"

elsif pcclass.downcase == "warrior" || pcclass.downcase == "fighter" || pcclass.downcase == "knight"
  puts
  puts "'A #{pcclass.downcase}, eh? Strong type, I bet. Just the sort we need to get out of this mess.'"
elsif pcclass.downcase == "mage" || pcclass.downcase == "sorcerer" || pcclass.downcase == "wizard"
  puts
  puts "'Oh...a #{pcclass.downcase}? ....Well, I suppose brains over brawn has its merits in a situation like this. Just don't go zapping me accidentally, you hear?'"

else
  puts
  puts "'A #{pcclass.downcase}? That's a new one for me. Well, whatever you are, I hope it serves us well. We need to get off this blasted ship..'"
end 
#this if/else statement gives different responses from Rurik depending on your class

  puts
  puts "Suddenly, the ship lurches violently, and you are thrown to the wall of your cell. A rush of water and debris suddenly gushes into the hallway with tremendous force. "
  puts
  puts "'Woah #{name}, you alright?' You open your eyes and see a tall, dark-haired Nord standing before you with an outstretched hand. 
'Looks like the walls of our cells were broken, and I think I can use this metal piece to pry the cell bars apart.'"
  puts
  puts "In an incredible feat of strength, Rurik wedges the metal piece into the iron bars and pries them apart."
  puts
  puts "'This should be enough to squeeze out. You lead the way #{name}, we need to make it to the captains quarters. It'll be safer there.'"

  if pcclass.downcase == "stealth archer" || pcclass.downcase == "thief" || pcclass.downcase == "assassin" || pcclass.downcase == "rogue"
    puts
    puts "After you and Rurik squeeze out of the cell, he picks up a rusty iron dagger from the ground and hands it to you. 'This should serve, for now at least. Let's get out of here!'"
  
  elsif pcclass.downcase == "archer" || pcclass.downcase == "ranger"
    puts
    puts "After you and Rurik squeeze out of the cell, he picks up a water-logged wooden bow and a few arrows from the ground and hands it to you. 'This should serve, for now at least. 
Keep an eye out for some arrows. Let's get out of here!'"
  
  elsif pcclass.downcase == "warrior" || pcclass.downcase == "fighter" || pcclass.downcase == "knight"
    puts
    puts "After you and Rurik squeeze out of the cell, he picks up a rusty iron mace from the ground and hands it to you. 'This should serve, for now at least. Let's get out of here!'"
  elsif pcclass.downcase == "mage" || pcclass.downcase == "sorcerer" || pcclass.downcase == "wizard"
    puts
    puts "After you and Rurik squeeze out of the cell, he picks up a splintering magical staff from a nearby floating shelf and hands it to you. 'This should serve for now. Let's get out of here!'"

  else 
    puts "After you and Rurik squeeze out of the cell, he picks up an iron sword. 'This should serve for now. Let's get out of here!'"
  end 
  #this if/else statement looks at the player class variable and has Rurik give the PC a different weapon or item depending on the class. Classic TES! 
  #In the future this could become the spot where a combat tutorial occurs
  #The item that Rurik gives the player should be an actual object stored in inventory with damage or restoration stats eventually. 
  
  loop do
    
    puts "
    Main Menu
      1. Woodcutting
      2. Exit
    "
    selection = gets.chomp.strip
  
    if selection == "1" || selection == "1."
        puts "Coming soon!"
    elsif selection == "2" || selection == "2."
        puts "Goodbye!"
        puts
        exit
    else puts "Please input a numerical menu option"
      if devmode == true 
        puts "You sussy baka!"
        # example of a dev mode dependant conditional 
      end
    end
#main menu with loop
end