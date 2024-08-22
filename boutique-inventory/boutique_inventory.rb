class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map{ |item| item[:name] }.sort
  end

  def cheap
    @items.select { |item| item[:price] < 30.00 }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size] == {} }
  end

  def stock_for_item(name)
    @items.select { |item| item[:name] == name }.pop[:quantity_by_size]
  end

  def total_stock
    items_with_stock = @items.select{ |item| item[:quantity_by_size] if !item[:quantity_by_size].empty? }
    if !items_with_stock.empty?
      value = items_with_stock.map{ |item| item[:quantity_by_size].map { |_, quantity| quantity } }.flatten.sum
    else
      0
    end
  end

  private
  attr_reader :items
end
