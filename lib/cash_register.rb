class CashRegister

  attr_accessor :total, :discount, :items, :last # Generic getter and setter

  # @total = 0
  # @discount = 0
  #
  # def initialize(total = 0, discount*)
  #   @total = total
  #   @discount = discount
  #   # total = 0
  # end

  def initialize(discount = 0)
    @total = 0 # And these assign them generic argument name
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @items << title
    end
    @last = (price * quantity)
  end

  def apply_discount
    if @discount != 0
      @total = @total.to_f * (1 - @discount.to_f / 100) # Turn the total into a float, add the discount, which is an integer, turned to a float
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last
  end

end
