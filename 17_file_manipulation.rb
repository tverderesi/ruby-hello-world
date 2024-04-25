# Reading Files
# We can read files using the File.read method. This method takes a filename as an argument and returns the entire
# contents of the file as a string.

# Read the contents of the file "file.txt"

file_contents = File.read("file.txt")
puts file_contents

employees_file = File.readlines("employees.csv")
header = employees_file[0].split(",")
header.map! { |key| key.chomp }
employees = []

employees_file[1..].each do |employee|
  data = employee.split(",")
  data.map! { |value| value.chomp }
  employee = {}
  header.each_with_index do |key, index|
    employee[key]= data[index]
  end
  employees << employee
end

# Increases the salary of each employee in the given array by the specified amount.
#
# @param employees [Array<Hash>] The array of employee data.
#   Each employee should be represented as a hash with "Salary" key.
# @param amount [Numeric] The percentage amount by which to increase the salary.
#   This should be a positive number representing the percentage increase.
#
# @return [void]
def increase_salary(employees, amount)
  employees.each do |employee|
    employee["Salary"] = (employee["Salary"].to_i * (1 + (amount.to_f/100))).
      round(0).to_s
  end
end

new_salaries = increase_salary(employees, 10)
puts new_salaries

# Writing Files
# We can write to files using the File.write method. This method takes a filename and a string as arguments and writes
# the string to the file.

# Convert the employees array back to a CSV string
employees_csv = header.join(",") + "\n"
employees.each do |employee|
  employees_csv += employee.values.join(",") + "\n"
end

# Write the CSV string to a new file called "new_employees.csv"
File.write("new_employee_salaries.csv", employees_csv)
