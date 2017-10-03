class Domain::ShippimentLabel
    
    attr_accessor :label, :order_item, :shippiment_address
    
    def initialize(label, orderItem, shippimentAddress,notify )
        @label = "#{orderItem.id}"
        @order_item = orderItem
        @shippiment_address = shippimentAddress
        @notify = notify
    end
end