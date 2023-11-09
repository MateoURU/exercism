require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items
    items_lenght = items.lenght
    
    items = OpenStruct.new
  end

  def item_names
    list_name = @items.map { |item| item.name }
  end

  def total_stock
    
  end
end
