require 'pry'
class Item
  attr_accessor :name, :price
  @@all = []

  def initialize(name,price)
    @name = name
    @price = price
    @@all << self
  end

  def self.everything
    @@all
  end

  def self.price(name)
    if item = Item.everything.find do |i|
       i.name == name
    end
    item.price
  else
    return nil
  end
  end
end
