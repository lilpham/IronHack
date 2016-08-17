#app.rb

require_relative("lib/employee.rb")
require_relative("lib/hourly_employee.rb")
require_relative("lib/multipayment_employee.rb")
require_relative("lib/salaried_employee.rb")
require_relative("lib/payroll.rb")

class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      @hourly_rate*@hours_worked
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, yearly_rate)
        @name = name
        @email = email
        @yearly_rate = yearly_rate
    end

    def calculate_salary
      @yearly_rate/52
    end
end

class MultiPaymentEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked, yearly_rate)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
        @yearly_rate = yearly_rate
    end

    def calculate_salary
    	 weekly_salary= @yearly_rate/52
    	if @hours_worked < 41
        weekly_salary
  		else @hours_worked > 40
  		((@hours_worked-40)*@hourly_rate)+weekly_salary
  	end
    end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end
    def pay_employees
  	total=0
  	@employees.each do |employee|
  		total += employee.calculate_salary
  		puts employee.calculate_salary
  		notify_employee(employee)
  		end
  		p total
  	end
 

    def notify_employee(employee)
	   	puts " Email sent to #{employee.email}" 
	 	puts "You can stop eating ramen. You have been paid the amount of #{employee.calculate_salary}"
	   	end
  
	
end



josh= HourlyEmployee.new("josh", "josh@gmail.com", 35, 50)
nizar= SalariedEmployee.new("nizar", "nizar@gmail.com", 100000)
ted= MultiPaymentEmployee.new("ted", "ted@gmail.com", 275, 55, 60000)
lilian= HourlyEmployee.new("lilian", "lilian@gmail.com", 15, 40)
meneti= HourlyEmployee.new("meneti", "meneti@gmail.com", 15, 40)

employees = [josh, nizar, ted, lilian, meneti]
weekn_payroll=Payroll.new(employees)

weekn_payroll.pay_employees







