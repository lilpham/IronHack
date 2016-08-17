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