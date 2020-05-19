class CashRegister 
  
attr_accessor :total, :discount, :items, :transaction 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = [ ]
    @transaction = []
  end 
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times do |item|
    @items << title 
    @transaction << @total
  end 
end 
  
  def apply_discount
    @total = @total - (@total * @discount)/100
    if @discount > 0
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
    
    def items 
      @items
    end 
  end 
  
  def void_last_transaction
    @total = @total - @transaction[@transaction.length - 1]
  end 
end 
  
