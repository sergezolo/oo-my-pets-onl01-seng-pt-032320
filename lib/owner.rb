class Owner
  
  @@all = []
  
  attr_accessor :cat, :dog
  attr_reader :name, :species
  
  def initiliaze(name)
    @name = name
    @species = species
    @cat = cat
    @dog = dog
    @all << self
  end
  
  def self.all
    @@all
  end
  
end