require 'bundler/setup'
Bundler.require
require_rel '../app'
require 'pry'

#followers 
follower1 = Follower.new "John", "25", "Don't drink"
follower2 = Follower.new "Ya", "45", "Drink"
follower3 = Follower.new "Ya", "45", "Drink"


#cult 
cult1 = Cult.new "New Cult", "Denver", 1955, "example"
cult2 = Cult.new "Old Cult", "Cali", 1355, "exam"
cult3 = Cult.new "Old ", "Cali", 1355, "exam"

Bloodoath.new cult1, follower1
binding.pry 