require_relative 'menu'
require_relative 'order'

class Restaurant
  def initialize(menu = Menu.new, current_order = Order.new, order_class = Order)
    @menu = menu
    @order_class = order_class
    @current_order = current_order
  end

  def view_menu
    @menu.view
  end

  def view_current_order
    @current_order.view
  end

  def add_item_to_order(item)
    @current_order.add_item(item)
  end

  def confirm_order
    @current_order = @order_class.new
  end
end
