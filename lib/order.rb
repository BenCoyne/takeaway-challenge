require_relative 'menu'

class Order
  attr_reader :basket, :menu, :item

  def initialize(menu)
    @menu = menu.items
    @basket = {}
  end

  def add_item(item, quantity) 
    raise "INVALID SELECTION" unless valid_selection(item)
    @basket[item.capitalize] = quantity 
  end

  private 

  def valid_selection(item)
    @menu[item.capitalize] != nil
  end
end
