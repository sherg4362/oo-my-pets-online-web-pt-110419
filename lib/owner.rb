require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species
  
  @@all = []
  @pets = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def pets
    @pets
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    cat = Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
  end
  
  def walk_dogs
    Dog.all.select do |dog| 
      dog.owner == self 
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    Cat.all.select do |cat| 
      cat.owner == self 
      cat.mood = "happy"
    end
  end
  
  
end