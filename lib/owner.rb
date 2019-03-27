class Owner
  # code goes here
  
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {
      :fishes => [],
      :cats => [],
      :dogs => []
    }
  
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
    "I am a #{species}."
  end
  
  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    pets[:fishes] << fish
  end
  
  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats] << cat
  end
  
  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[:dogs] << dog
  end
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    #set all the mood of all pets as "nervous"
    pets.each do |type, pet_list|
      pet_list.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.each do |type, pet_list|
      pet_list.clear
    end    
  end
  
  def list_pets

    str = "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
 
  end
end
