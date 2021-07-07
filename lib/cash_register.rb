require 'pry'
class CashRegister
attr_accessor :total, :discount, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(item_name, price, quantity = 1 )
  self.total += price*quantity
  @items += [item_name]*quantity
  # @items.concat([item_name]*quantity)
  @last_transaction = @total
end

def apply_discount
  if @discount >= 1
  discount_amount = self.total*(@discount/100.to_f)
  new_total = self.total -= discount_amount
  "After the discount, the total comes to $#{new_total.to_i}."
else
  "There is no discount to apply."
end
end

def items
  @items
end

def void_last_transaction
 @total -= @last_transaction
end

end