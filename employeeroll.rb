class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end

    def  show_salary
    print "#{@name}'s weekly salary [Raw: $#{calculate_salary.round(2)} / "
   
  end

end

class HourlyEmployee < Employee

    def initialize(name, email, hourly_rate, hours_worked)
        super(name,email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      @hourly_rate * @hours_worked
      
    end
end

class SalariedEmployee < Employee

	def initialize (name,email,yearly_salary)
		super(name,email)
		@yearly_salary= yearly_salary
	end
	def calculate_salary
		@yearly_salary/52
	end

end

class MultipaymentEmployee < Employee
	def initialize (name,email,yearly_salary,hourly_rate,hours_worked)
		super(name,email)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
		@yearly_salary = yearly_salary
	end

	def calculate_salary
		(@yearly_salary/52) + @hourly_rate *(@hours_worked-40)
	end	
end



sahu = HourlyEmployee.new("Sahu", "sahu@gmail.com", 35, 50)
yasin = SalariedEmployee.new("Yasin", "Yasin@gmail.com", 100000)
ted = MultipaymentEmployee.new("Ted", "ted@gm.com",60000,275,55)
simon = HourlyEmployee.new("Simon","simon@gmail.com", 15, 40)
jose = HourlyEmployee.new("Jose","jose@gman.com", 15, 40)

employees = [sahu,yasin,ted,simon,jose]



puts "\nStep Two"

class Payroll
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
      @employees.each do |employee|
      	employee.show_salary
      end 
  end
end

payroll = Payroll.new (employees)
payroll.pay_employees

