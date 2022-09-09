require "rspec"
require 'credit_request'

describe CreditRequest do
  it 'assigns instance variables' do
    credit_request = CreditRequest.new(30, 20_000, "w", "y", 10_000)
    expect(credit_request.age).to eq 30
    expect(credit_request.salary).to eq 20_000
    expect(credit_request.gender).to eq "m"
    expect(credit_request.credit_history).to eq "y"
    expect(credit_request.request_amount).to eq 10_000
  end

end
