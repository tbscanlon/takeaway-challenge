require_relative 'menu'

class Order
  attr_reader :basket

  def initialize
    @basket = []
  end
end
