class Domain::PaymentProductMembership < Domain::PaymentProduct
    
def type
   :"membership"
end
    
def execute(order_item)
    message = "Pagamento confirmado, sua assinatura já está ativa em nosso site. "
   
    Domain::Membership.new(customer).activate
    
    Infra::Mail.send(message)
end
    
end