require_relative 'order'

class Menu
  attr_reader :contents

  def initialize
    @contents = {
      "Horse Burger"        => 8.99,
      "Horse Sirloin"       => 20.99,
      "Horse Cutlets"       => 13.99,
      "Horse Chops"         => 12.99,
      "Rack of Horse Ribs"  => 17.99,
      "Horse Stew"          => 9.99,
      "Horse Lasagne"       => 8.99,
      "Horse Surprise"      => 12.99
    }
  end

  def view
    list_contents
  end

  private
  def list_contents
    contents.each { |item, price| puts "#{item}: #{price}" }
  end
end
