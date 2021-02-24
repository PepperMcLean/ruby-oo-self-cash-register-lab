class CashRegister
    attr_accessor :total, :discount
    attr_reader :items, :last
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end


    def add_item(title, price, quantity=1)
        count = 0
        @last = 0
        while count < quantity
            @items << title
            count += 1
        end
        @total += price*quantity
        @last = price*quantity
    end

    def apply_discount
        if discount > 1
            @total -= @total*@discount*0.01
            return "After the discount, the total comes to $#{@total.round}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last
    end


end
