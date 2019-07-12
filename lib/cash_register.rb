class CashRegister


attr_accessor :discount, :item, :last_transaction, :total

  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0
    @last_transaction =0
  end


def add_item(title,price,count=1)
  @items << (title.split(","))*count#80 + @18
  @total = self.total+(price*count)
  @last_transaction = @total*count

end

def apply_discount
      if @discount > 0
        @discount = @discount/100.to_f
        @total = @total - (@total * (@discount))
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
    end

    def void_last_transaction
      @total = @total-@last_transaction
    end

    def items
      @items.flatten
    end

end
