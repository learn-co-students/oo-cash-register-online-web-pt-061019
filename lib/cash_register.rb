require "pry"

class CashRegister 
  
  attr_accessor :total, :discount, :quantity
  
  def initialize(discount=0, total=0)
    @discount = discount 
    @total = total
    @previous_total = 0
    @items = []
  end 
  
  def add_item(title, price, quantity=1)
    quantity.times do 
      @items << title 
    end 
    @previous_total = @total
    @total += price * quantity
  end 
  
  def apply_discount
    if @discount != 0 
      discount_variable = 100 - @discount
      discount_variable = discount_variable.to_f / 100
      @total = @total * discount_variable
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end 
  end 
    
  def items
    @items
  end 
    
  def void_last_transaction
    @total = @previous_total
  end 
  
end 