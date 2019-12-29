require 'pry'
class Dog
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood
  
  @@all = []
  
  def initialize(pet_name, pet_owner, mood = "nervous")
    @name = pet_name
    @owner = pet_owner
    @mood = mood
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  #binding.pry
end