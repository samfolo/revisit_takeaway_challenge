class Order
  def initialize(items = [])
    @items = items
  end

  def add_item(item, quantity)
    order_selection = { dish: item[:dish],
                        quantity: quantity,
                        price: quantity*item[:price]
                      }
     @items.push(order_selection)
  end

  def view
    p @items.map.with_index { |item, indx|
      "#{indx+1}. #{item[:quantity]}x #{item[:dish]}: #{item[:price]}"
    }.join("\n")
    # "1. 3x Pizza: 18"
  end
end
