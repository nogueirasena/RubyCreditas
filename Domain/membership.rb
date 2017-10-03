class Domain::Membership
    
    attr_accessor :active, :timeActivate, :customer
  
    
    def initialize(customer)
      @customer = customer
    end
    
    def activate
      self.active = true
      self.save
      self.timeActivate= Time.now
    end
    
   
  end
  