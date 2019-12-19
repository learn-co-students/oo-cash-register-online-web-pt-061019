class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
    @transactions = []
  end

  def add_item(title, price, quantity = 1)
    transaction = price * quantity
    self.total += transaction
    quantity.times do
      @items << title
    end
    @transactions << transaction
  end

  def apply_discount
    if discount
      self.total -= self.total * (self.discount/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= @transactions[-1]
  end

end
