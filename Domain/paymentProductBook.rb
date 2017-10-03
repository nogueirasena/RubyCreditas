class Domain::PaymentProductBook < Domain::PaymentProduct
    
    attr_accessor :orderItem
        
    def type
      :"book"
    end
        
    def execute(order_item)
        ShippimentLabel.new(order_item)
        
        mensagem = "Pagamento confirmado, seu produto é isento de impostos conforme disposto na Constituição Art. 150, VI, d."
        
        Infra::Mail.send(message)
    end
                
end


