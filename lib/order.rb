require_relative 'menu'

class Order
  attr_reader :basket, :menu, :total

  def initialize(menu = Menu.new)
    @basket = []
    @menu   = menu
    @total  = nil
  end

  def add(item)
    add_to_basket(item)
  end

  def view
    raise "Your basket is empty" if basket.empty?
    show_contents
    calculate_total
  end

  def show_menu
    menu.view
  end

  private
  def add_to_basket(item)
    to_add = search_menu(item)
    basket.push(to_add)
    "#{to_add.keys.first} (#{to_add.values.first}) has been added to your basket."
  end

  def search_menu(item)
    raise "#{item} not found" unless menu.contents.has_key? item
    menu.contents.select { |k| k == item }
  end

  def show_contents
    basket.each { |h| puts "#{h.keys.first}: #{h.values.first}" }
  end

  def calculate_total
    @total = basket.inject(0) { |sum, item| sum + item.values.first }
    "Your total is £#{@total}"
  end
end
