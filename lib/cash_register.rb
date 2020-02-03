class CashRegister
  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(title, price, quantity = 1)
    transaction = price * quantity
    self.total += transaction
    quantity.times do
      self.items << title
    end
    self.transactions << transaction
  end

  def apply_discount
    if @discount
      self.total -= self.total * (self.discount/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @transactions.pop
  end
end
