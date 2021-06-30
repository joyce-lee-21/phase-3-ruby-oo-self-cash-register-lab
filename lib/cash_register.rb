require "pry"

class CashRegister
    attr_accessor :total, :discount

    def initialize(total=0, discount=20)
        @total = total
        @discount = discount
    end

    def add_item(title, price, quantity=nil)
        if quantity
            @total += quantity * price
        else
            @total += price
        end
    end

    def apply_discount
        self.total = self.total - (self.total * (@discount.to_f / 100.to_f))
        # binding.pry
        "After the discount, the total comes to $#{@total.to_i}."
    end
    
end