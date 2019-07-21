require 'pry'
class CashRegister
  attr_accessor :total, :discount, :last_trans

  def initialize (discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_trans = []
  end

  def add_item(title,price,quantity=1)
    count = 0
    while count < quantity
      self.total += price
      @items << title
      @last_trans << price
      count +=1
    end
  end

  def apply_discount
    if @discount
      # disc_price = self.total * (@discount.to_f/100)
      # self.total -= disc_price

      self.total -= self.total * (self.discount/ 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    # self.total -= @last_trans[-1]
    self.total -= @last_trans.last
  end
end
