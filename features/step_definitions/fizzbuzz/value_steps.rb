require_relative '../../../lib/fizzbuzz/value'

Given('a Value with a number {int} and processed value is {string}') do |int, string|
  @value = Value.new(int, string)
end

Given('a Value with a number {int} and processed value is ') do |int|
  @value = Value.new(int)
end

When('the get method of the Value is called') do
  @actual_answer = @value.get
end

Then('it should return the string {string}') do |string|
  expect(@actual_answer).to eq(string)
end

When(/called append method with a string (.+)/) do |string|
  @actual_answer = @value.append string
end

Then(/^it becomes a new Value with (\d+) and (.*)$/) do |int, string|
  expected = Value.new int, string
  expect(@actual_answer).to eq(expected)
end
