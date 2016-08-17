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
