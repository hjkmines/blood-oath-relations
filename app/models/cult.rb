class Cult 

attr_reader :name, :location, :founding_year, :slogan 
@@all = []

def initialize name, location, founding_year, slogan 
  @name = name 
  @location = location 
  @founding_year = founding_year
  @slogan = slogan 
  @@all << self 
end 

def self.all 
  @@all 
end 

def recruit_follower follower 
  follower.age >= self.minimum_age ? BloodOath.new(self, follower) : (p "You are too young!") 
end 

def cult_population 
  followers = BloodOath.all.map {|bloodoath| bloodoath.cult == self ? bloodoath.follower.name : nil}.compact.uniq 
  count = followers.length 
end 

def self.find_by_name name 
  Cult.all.select {|cult| cult.name == name ? cult : nil}
end 

def self.find_by_location location 
  Cult.all.map {|cult| cult.location == location ? cult.name : nil}.compact 
end 

def self.find_by_founding_year year 
  Cult.all.map {|cult| cult.founding_year == year ? cult.name : nil}.compact 
end 

def average_age 
  ages = BloodOath.all.map {|bloodoath| bloodoath.cult == self ? bloodoath.follower.age : nil}.compact 
  ages.reduce(0) {|sum, age| sum + age}/ages.length 
end 

def my_followers_mottos 
  mottos = BloodOath.all.map {|bloodoath| bloodoath.cult == self ? bloodoath.follower.life_motto : nil}.compact
  mottos.each {|motto| p motto}
end 

def self.least_popular 
  frequency = BloodOath.all.map {|bloodoath| bloodoath.cult}.compact 
  frequency.min_by {|i| frequency.count(i)}
end 

def self.most_common_location 
  frequency = BloodOath.all.map {|bloodoath| bloodoath.cult.location}.compact 
  frequency.max_by {|i| frequency.count(i)}
end 

def minimum_age 
   18
end 

end 