require 'time' # you're gonna need it

class Bar

  attr_reader :name
  attr_accessor :menu_items, :happy_discount, :total_sales, :purchase_list

  def initialize(name)
    @name = name
    @menu_items =[]
    @happy_discount = 0
    @total_sales = 0
    @purchase_list = {}
  end

  def add_menu_item(item, price)
    x =Item.new(item, price)
    @menu_items<<x
  end

  def add_to_discount_list (item)
    @menu_items.each do |x|
      if x.name == name
        x.discount = true
      else
        return
      end
    end
  end

  def happy_discount
    date = Time.now.wdate

    if happy_hour?
      if date ==1 || date == 3
        @happy_discount=0.5
      else
        @happy_discount=.25
      end
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
        if happy_hour? && x.discount?
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

  def purchase (name, quantity)
    purchase_total = 0
     @menu_items.each do |x|
      if x.name == name
        purchase_total = get_price(x.name)*quantity
        purchase_list[x.name]+=purchase_total
        @total_sales+=purchase_total
        return purchase_total
      else
        puts "The bartender doesn't know how to make the drink"
      end
    end
  end

end

class Item
  attr_accessor :name, :price, :discount

  def initialize(name, price, discount = false)
    @name = name
    @price = price
    @discount = discount
  end

end
