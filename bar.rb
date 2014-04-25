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
    if happy_hour?
      @happy_discount= 0.5
    else
      @happy_discount = 0
    end

    if @happy_discount > 1
      @happy_discount = 1
    elsif @happy_discount < 0
      @happy_discount = 0
    else
      @happy_discount
    end
  end

  def happy_hour?
    if Time.now > Time.parse("3:00pm") && Time.now < Time.parse("4:00pm")
      return true
    else
      return false
    end
  end

  def get_price(name)
    item_price = 0
    @menu_items.each do |x|
      if x.name == name
        if happy_hour?
          item_price = x.price*@happy_discount
           return item_price
        else
          item_price = x.price
           return item_price
        end
      else
        puts "The drink doesn't exist"
      end
    end
  end

end

class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

end
