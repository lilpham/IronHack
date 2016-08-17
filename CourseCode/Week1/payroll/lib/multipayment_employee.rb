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