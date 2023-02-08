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
end