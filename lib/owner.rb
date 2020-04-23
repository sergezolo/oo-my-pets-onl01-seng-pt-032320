class Owner
  
  attr_accessor :cat, :dog
  attr_reader :species, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def cats
    Cat.all.each do |cat|
      cat.owner == self
      @cats << cat
    end
  end
  
  def dogs
    Dog.all.each do |dog|
      dog.owner == self
      @dogs << dog
    end
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end
  
  def walk_dogs
    @dogs.each{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    @cats.each{|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
  
  def list_pets
    num_cats = @cats.length
    num_dogs = @dogs.length
    "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end  

end
