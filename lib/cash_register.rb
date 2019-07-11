class CashRegister

  attr_accessor :total, :discount, :transactions, :items

  def initialize(discount=nil)
    @total = 0.0
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(title, price, qty=1)
    # self.total += price.to_f * qty
    # qty.times { self.items << title }
    # self.transactions << price.to_f * qty
    transaction = qty * price
    self.total += transaction
    self.transactions << transaction
    qty.times { self.items << title }
  end

  def apply_discount
    if self.discount
      # self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      self.total -= self.total * (@discount/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.transactions.pop
  end

end
