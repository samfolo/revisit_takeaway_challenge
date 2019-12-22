class Order
  def initialize(items = [])
    @items = items
  end

  def add_item(item, quantity = 1)
    order_selection = { dish: item[:dish],
                        quantity: quantity,
                        price: quantity * item[:price]
                      }
    @items.push(order_selection)
  end

  def view
    @items.map.with_index { |item, indx|
      "#{indx + 1}. #{item[:quantity]}x #{item[:dish]}: £#{'%.2f' % item[:price]}"
    }.join("\n")
  end

  def total
    total_price = @items.map { |item| item[:price].to_i }.reduce(&:+)
    "£#{'%.2f' % total_price}"
  end
end
