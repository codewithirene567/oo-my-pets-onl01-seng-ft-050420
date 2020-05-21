require "pry"
class Owner
  attr_reader :name, :species
  
  @@all = []
  #attr_readers/writers are creating methods to access or assign the value of that variable 
  def initialize(name)
    @name = name
    @species = "human" #string of human versus variable called human
    @@all << self
  end
 #initialize method gives us access to all the instance variables through the instance methods
  #make sure the white words exist somewhere else or that you are defining them
  
  def say_species
  "I am a #{@species}."
    end
    
    def self.all
      @@all
    end
    
    def self.count
      @@all.count
    end
    
    def self.reset_all
      @@all.clear
    end
    
    def cats
      Cat.all.select {|cats| cats.owner == self }#look through the has many labs, use iterator.select
      #look through all the cats and select the cats that have this instance listed as an owner
      #this is a pattern
    end
    
    def dogs 
      Dog.all.select {|dog| dog.owner == self}
    end
    
    def buy_cat(name)
    cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self)
  end
  
 
   def walk_dogs
    dogs.each do |dog|
      dog.mood = 'happy'
    end
  end
  
  def feed_cats
    cats.each do |cat|
      cat.mood = 'happy'
    end
  end
  
  def sell_pets
    binding.pry
    self.cats.each do |cats|
      
      cats.clear
    cat.mood = 'nervous'
  end
end
  
    #object = Owner.new("Irene")
#Dog.new("lucky", object)

end

