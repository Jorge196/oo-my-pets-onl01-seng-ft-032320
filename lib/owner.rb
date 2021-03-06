require 'pry'
class Owner

  # code goes here
  @@all= []
  attr_accessor :mood, :pets
  attr_reader :species, :name, :cats, :dogs

  # Instance Methods #

  def initialize(name)
    @name = name
    @@all << self
    @pets = {:cats => [], :dogs => []}


    @species = "human"
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def say_species
     "I am a #{@species}."
  end

  def buy_cat(name)
     Cat.new(name, self)
  end


  def buy_dog(name)
    Dog.new(name, self)
  end


  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
  end
end




  def sell_pets
    arrayofpets = self.dogs + self.cats
    arrayofpets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
end


  def list_pets
      "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

  # Class Methods #

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end
end
