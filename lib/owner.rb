class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species
  @pets={:fishes => [], :dogs => [], :cats => []}
  @@all=[]

  def initialize(species)
    @species=species
     @@all<<self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all=[]
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
     self.pets[:fishes]<<Fish.new(name)
  end


end
