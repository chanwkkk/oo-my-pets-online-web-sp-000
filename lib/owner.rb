class Owner
  # code goes here
  attr_accessor :name
  attr_writer :pets
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

  def pets
    {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
     pets[:fishes]<<Fish.new(name)
  end


end
