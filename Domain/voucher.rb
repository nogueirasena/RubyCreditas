class Domain::Voucher
    attr_accessor :customer, :credit

    def initialize(customer, credit)
        @customer = customer
        @credit = credit
    end
end