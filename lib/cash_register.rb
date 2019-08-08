class CashRegister

  attr_accessor :total, :discount, :item, :price, :items, :prices
  
  def initialize(discount = 0)
    @@items = []
    @@prices = []
    
    @total = 0
    @discount = discount
  end
    
  def add_item(item, price, quantity = 1)
    count = quantity
    @item = item
    @price = price
    @total = @total + price * quantity
    @@prices << price * quantity
    
    while count >0
      @@items << item
      count -= 1
    end
  end

  def apply_discount
    if discount != 0
      @total = @total * (100 - @discount)/100
      p "After the discount, the total comes to $#{@total}."
    elsif discount == 0
      p "There is no discount to apply."
    end
  
  end
  
  def items
    @@items
  end
  
  def void_last_transaction
    @total = @total - @@prices[-1]
  end
end

    
  

