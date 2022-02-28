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

salaried_employee = SalariedEmployee.new("saas", -22)
salaried_employee.print_pay_stub
hourly_employee = HourlyEmployee.new
hourly_employee.print_pay_stub