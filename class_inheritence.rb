class Employee
    attr_reader :salary
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(mutiplier)
        salary * mutiplier
    end
end


class Manager < Employee

    attr_accessor :employees

    def initialize(name, title, salary, boss=nil)
        super
        @employees = []
    end
    
    def bonus(mutiplier)
        que = @employees.dup
        tot_salary = 0
        until que.empty?
            employee = que.shift

            if employee.is_a?(Manager)
                 tot_salary += employee.salary
                 que += employee.employees
            else 
                tot_salary += employee.salary
            end 
        end
        tot_salary * mutiplier
    end
end


# ned = Manager.new("ned", "founder", 1000000)
# darren = Manager.new("darren", "manager", 78000, "ned")
# shawn = Employee.new("shawn", "TA", 12000, "darren")
# david = Employee.new("david", "TA", 10000, "darren")

# ned.employees += [darren] 
# darren.employees += [shawn, david] 

# p ned.bonus(5) # => 500_000
# p darren.bonus(4) # => 88_000
# p david.bonus(3) # => 30_000
