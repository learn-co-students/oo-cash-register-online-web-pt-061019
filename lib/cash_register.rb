class CashRegister

  attr_accessor :total, :discount, :list, :transaction

  def initialize(input_discount = 0)
    @total = 0
    @discount = input_discount
    @list = []
    @transation = 0
  end

  def add_item(item,price,quantity=1)
    @total += price * quantity
    quantity.times {@list << item}
    @transaction = price * quantity
  end

  def apply_discount()
    new_variable = @discount.to_f/100
    if @discount > 0
      @total = (1-new_variable) * @total
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items()
    @list
  end

  def void_last_transaction()
    @total -= @transaction
  end

end
