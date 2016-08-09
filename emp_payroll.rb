class Employee
	attr_reader :name, :email
	def initialize name, email
		@name = name
		@email = email
	end
end

class HourlyEmployee < Employee

	def initialize name,email,hourly_rate,hours_work
		super(name, email)
		@hourly_rate = hourly_rate #35$ por hora
		@hours_work = hours_work #50 horas trabajadas
	end

	def weekly
		@hourly_rate * @hours_work 
	end
end


josh= HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)


class SalariedEmployee < Employee
	attr_reader :salary
	def initialize name, email, salary
		super(name, email)
		@salary = salary 
	end

	def weekly
		@salary/52
	end
end

nizar = SalariedEmployee.new('Nizar', 'nizar@gmail.com', 100000)

	
class MultipaymentEmployee < Employee

	def initialize name, email, salary, payment_extra_hour, weekly_hours
		super(name, email)
		@salary = salary
		@payment_extra_hour = payment_extra_hour
		@weekly_hours= weekly_hours
	end

	def weekly
		limit_hours=40
		total_pay_extra=0
		if @weekly_hours > limit_hours
			extra_hours = @weekly_hours - limit_hours
			total_pay_extra = extra_hours*@payment_extra_hour
		end
		@salary/52+total_pay_extra	
	end
end

ted=MultipaymentEmployee.new('Ted','ted@email.com',60000,275,55)


class Payroll 

	def initialize 
		@employees= []
	end

	def add_employee employee
		@employees.push(employee)
	end

	def pay_employees
		@employees.each do |employee|
			puts "#{employee.name}: #{employee.weekly}"
		end
	end

end

employees=[josh,nizar,ted]
payroll=Payroll.new()

payroll.add_employee(ted)
payroll.add_employee(josh)
payroll.add_employee(nizar)

payroll.pay_employees
