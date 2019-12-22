class Menu
  def initialize(*items)
    @items = items
  end

  def view
    @items.map.with_index { |item, indx|
      "#{indx+1}. #{item[:dish]}: #{item[:price]}"
    }.join("\n")
  end
end
