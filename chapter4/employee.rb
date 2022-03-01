class Employee 
    
    attr_reader :name
    
    def name=(value)
        if value == ''
            raise "Name can't be blank!"
        end 
        @name=value 
    end 

    def initialize(name = "Anonymous")
        self.name = name 
    end 

    def print_name
        puts "Name: #{name}"
    end 

end 

class SalariedEmployee < Employee
    
    attr_reader :salary 

    def salary=(value)
        if value < 0 
            raise "A salary of #{value} isn't valid!"
        end 
        @salary=value 
    end 

    def initialize(name = "Anonymous", salary = 0.0)
        super(name)
        self.salary = salary
    end 



    def print_pay_stub
        print_name
        pay_for_period = (salary / 365.0) * 14
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end 
    
end 

class HourlyEmployee < Employee

    def self.security_guard(name)
        HourlyEmployee.new(name, 19.25, 30)
    end
    def self.cashier(name)
        HourlyEmployee.new(name, 12.75, 25)
    end
    def self.janitor(name)
        HourlyEmployee.new(name, 10.50, 20)
    end

    attr_reader :hourly_wage, :hours_per_week

    def hourly_wage=(value)
        if value < 0
            raise "An hourly wage of #{value} isn't valid!"
        end 
        @hourly_wage=value 
    end 

    def hours_per_week=(value)
        if value < 0
            raise "An hours per week of #{value} isn't valid!"
        end 
        @hours_per_week=value 
    end 

    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end 

    def print_pay_stub
        print_name
        pay_for_period = hourly_wage * hours_per_week * 2 
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end 

end 


jane = SalariedEmployee.new("Jane Doe", 50000)
jane.print_pay_stub
angela = HourlyEmployee.security_guard("Angela Matthews")
ivan = HourlyEmployee.cashier("Ivan Stokes")
angela.print_pay_stub
ivan.print_pay_stub