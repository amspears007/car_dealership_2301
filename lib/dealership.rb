class Dealership  
  attr_reader :name, 
              :address,
              :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def add_car(car)
    inventory << car
  end

  def has_inventory?
    inventory.count > 0
  end

  def cars_by_make(make)
    inventory.find_all do |car|
      car.make == make  
    end
  end

  def total_value
    inventory.map do |car|
      car.total_cost
    end
    .sum
  end
end