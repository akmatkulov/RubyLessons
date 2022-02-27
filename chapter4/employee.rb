class Employee
    attr_reader :name, :salary  

    def name=(value)
        if value == ''
            raise "Name can't be blank!"
        end 
        @name=value
    end 

    def salary=(value)
        if value < 0
            raise "A salary of #{value} isn't valid!"
        end 
        @salary=value 
    end 

    def print_pay_stub
        puts "Name: #{@name}"
        pay_for_period = (@salary / 365.0) * 14
        formatet_pay = format("%.2f", pay_for_period)
        puts "Pay This Period: $#{formatet_pay}"
    end 
end 

alex = Employee.new 
alex.name="Alex"
alex.salary=50000
alex.print_pay_stub