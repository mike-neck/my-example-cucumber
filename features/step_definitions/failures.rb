
Given('this block is safe') do
  @this_block = nil
end

When('this block is unsafe') do
  @this_block < 'unsafe'
end

Then("this code won't be executed") do
  pending # Write code here that turns the phrase above into concrete actions
end
