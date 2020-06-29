class Follower 

attr_reader :name, :age, :life_motto 
@@all = []

def initialize name, age, life_motto
  @name = name 
  @age = age 
  @life_motto = life_motto
  @@all << self 
end 

def self.all 
  @@all 
end 

def cults 
  BloodOath.all.map {|bloodoath| bloodoath.follower == self ? bloodoath.cult.name : nil}.compact
end 

def join_cult cult 
  self.age >= cult.minimum_age ? BloodOath.new(cult, self) : (p "You are too young!")
end 

def self.of_a_certain_age age 
  Follower.all.map {|follower| follower.age >= age ? follower.name : nil}.compact 
end 

def my_cults_slogans 
  BloodOath.all.map {|bloodoath| bloodoath.follower == self ? bloodoath.cult.slogan : nil}.compact 
end 

def self.most_active 
  followers = BloodOath.all.map {|bloodoath| bloodoath.follower}
  followers.max_by {|follower| followers.count(follower)}
end 

def fellow_cult_members 


end 

end 