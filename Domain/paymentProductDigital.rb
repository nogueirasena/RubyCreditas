class Domain::PaymentProductDigital < Domain::PaymentProduct
    
attr_accessor :order_item
    
def type
    :"digital"
end

def execute(order_item)
    message = "Pagamento confirmado"
     
     Infra::Mail.send(message)
   
     Domain::Voucher.new(customer, 10)
end
end