class Dog

  attr_accessor :owner
  attr_reader :mood


  @@dogs = []

  def initialize(name, owner, mood)
    @name = name
    @owner = owner
    @mood = "nervous"
    owner.dogs << self
    @@dogs << self
  end

  def name
    @name
  end

  def self.all
    @@dogs
  end
end
