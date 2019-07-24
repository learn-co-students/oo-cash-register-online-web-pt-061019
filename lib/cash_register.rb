class CashRegister
  attr_accessor :discount, :total


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    @history = []
  end

  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:item] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

     @history << item_info
    quantity.times do 
     @cart << item 
  end 
    
     @total += price * quantity
  end
 
  def apply_discount
    if discount == 0
    return "There is no discount to apply."
  end
      @total = @total - (@total * @discount / 100 ) 
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    item_name = []
      @cart.each do |item_i|
  end
  end
  
  def void_last_transaction
    
      self.total -= self.total
    
  end 
 
end