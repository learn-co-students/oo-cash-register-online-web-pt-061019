class CashRegister

  attr_accessor :total, :discount, :last, :items

  def initialize(discount=nil)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def add_item(title, price, qty=1)
    self.total += (price.to_f*qty)
    qty.times {self.items << title}
    self.last = price
  end

  def apply_discount
    if self.discount
      self.total = self.total.to_i - (self.total.to_i*(self.discount/100))
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

end
