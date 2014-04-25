require 'time' # you're gonna need it

class Bar

  attr_reader :name
  attr_accessor :menu_items, :happy_discount

  def initialize(name)
    @name = name
    @menu_items =[]
    @happy_discount = 0
  end

  def add_menu_item(item, price)
    x =Item.new(item, price)
    @menu_items<<x
  end

  def happy_discount
    if @happy_discount > 1
      @happy_discount = 1
    elsif @happy_discount < 0
      @happy_discount = 0
    else
      @happy_discount
    end

    if happy_hour?
      @happy_discount
    else
      return 0
    end
  end

  def happy_hour?
  end

end

class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

end
