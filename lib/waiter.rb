class Waiter
  
  attr_accessor :name, :yrs_experience
  
  @@all = []
  
  def initialize(name, yrs_experience)
    @name = name
    @Yrs_experience = yrs_experience
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def meals
    Meals.all.select do |meal|
      meal.water == self
    end
  end

end