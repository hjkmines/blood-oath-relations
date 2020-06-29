require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#cults 
cult1 = Cult.new("Blue Cult", "Denver", 2005, "Blue is the Best")
cult2 = Cult.new("Red Cult", "Thornton", 2009, "Red is the Best")
cult3 = Cult.new("Black Cult", "Denver", 2009, "Black is the Best")
cult4 = Cult.new("Purple Cult", "Northglenn", 2003, "Purple is the Best")
cult5 = Cult.new("Yellow Cult", "Ft. Lupton", 2008, "Yellow is the Best")
cult6 = Cult.new("Brown Cult", "Springs", 2009, "Brown is the Best")

#followers 
follower1 = Follower.new("John Hemez", 25, "Livin' the Dream")
follower2 = Follower.new("Tony Kim", 35, "Work it out")
follower3 = Follower.new("Scott Her", 45, "I love to eat food")
follower4 = Follower.new("David Lopez", 15, "Don't eat")
follower5 = Follower.new("James Brown", 11, "Work Hard")
follower6 = Follower.new("Jake Lake", 22, "I love sports")

#oaths 
oath1 = BloodOath.new(cult1, follower2)
oath2 = BloodOath.new(cult3, follower1)
oath3 = BloodOath.new(cult3, follower4)
oath4 = BloodOath.new(cult4, follower2)
oath5 = BloodOath.new(cult4, follower3)
oath6 = BloodOath.new(cult2, follower6)
oath7 = BloodOath.new(cult2, follower2)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
