require_relative 'lib/credit_request'

# age   |  salary  | gender  |  credit_history  | request_amount  | scoring
# 20    |  30_000  | m       |  n               | 50_000          | 10
# 25    |  60_000  | w       |  n               | 10_000          | 10+10+20+20 = 60
# 45    |  25_000  | w       |  y               | 5_000           | 20+10+10+20+20 = 80

cr1 = CreditRequest.new(20, 30_000, 'm', 'n', 50_000)
cr2 = CreditRequest.new(25, 60_000, 'w', 'n', 10_000)
cr3 = CreditRequest.new(45, 25_000, 'w', 'y', 5_000)

puts "First request: #{cr1.calculate_scoring} (10)"
puts "Second request: #{cr2.calculate_scoring} (60)"
puts "Third request: #{cr3.calculate_scoring} (80)"

