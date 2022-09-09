require_relative 'lib/credit_request'

# age - возраст
# gender - пол (m/w)
# salary - доход
# credit_history - кредитная история (y/n)
# request_amount - запрашиваемая сумма

puts "Welcome! We are glad to see you at the bank!"
puts

puts "How old are you?"
age = gets.to_i

puts "What is your monthly income?"
salary = gets.to_i

puts "Gender? (m/w):"
gender = gets[0]

puts "Do you have a credit history (y/n)?"
credit_history = gets[0]

puts "What is the size of the loan you want to take out?"
request_amount = gets.to_i

credit_request =
  CreditRequest.new(age, salary, gender, credit_history, request_amount)

if credit_request.approve?
  puts "Your loan is approved!"
else
  puts "Sorry, we have to refuse you."
end
