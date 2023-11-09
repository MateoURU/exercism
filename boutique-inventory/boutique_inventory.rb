class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  COST_EXPENSIVE = 30

  def item_names
    list_name = @items.map { |item| item[:name] }
    list_name.sort
  end

  def cheap
    items.select { |item| item[:price] < 30 }
  end

  def out_of_stock
    items.select { |item| item[:quantity_by_size] == {} }
  end

  def stock_for_item(name)
    i = items.find { |item| item[:name] == name }[:quantity_by_size]
  end

  def stock_for_item(name)
    i = items.find { |item| item[:name] == name }
    if i
      i[:quantity_by_size]
    end
  end

  def total_stock
    items.
      map { |i| i[:quantity_by_size].
      map { |_, v| v} }.
      flatten.
      sum
  end

  private
  attr_reader :items
end