require 'pry'

class Owner

  attr_reader :name,:species

 @@all =[]
 @@count=0
  def initialize(name)
    @name=name
    @species ="human"
    @@all << self
    @@count +=1
  end

  # code goes here
  def species
     @species
  end

  def say_species
      "I am a #{@species}."
  end

  def self.all
     @@all
  end

  def self.count
     @@count
  end
  def self.reset_all
  #  @@all = 0
    @@count =0
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

  def buy_cat(name)
    cat1=Cat.all.select do |cat|
      cat.name == name
    end
  #  binding.pry

    cat1.owner = self
  end

  def buy_dog
      Dog.new(name,dogs)
  end

end
