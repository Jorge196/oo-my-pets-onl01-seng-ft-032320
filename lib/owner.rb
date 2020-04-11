class Owner
  # code goes here
  @@all= []
  attr_accessor :mood
  attr_reader :species, :name, :cats, :dogs

  # Instance Methods #

  def initialize(name)
    @name = name
    @@all << self

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
    @owner.mood = "nervous"
    end


  def list_pets

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
