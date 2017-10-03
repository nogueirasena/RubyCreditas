class Domain::PaymentProductPhysical < Domain::PaymentProduct
    
    def type
        :"physical"
    end
    
    def execute(orderItem)
    shippingLabel = ShippimentLabel.new(orderItem)

    end
end
