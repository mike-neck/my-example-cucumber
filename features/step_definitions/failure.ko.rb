# frozen_string_literal: true

require 'rspec/collection_matchers'

먼저(/^먼저 ([a-zA-Z]+)$/) do |name|
  @my_name = name
end

만약(/^만약 (safe|unsafe)$/) do |result|
  expect(result).to eq("safe")
end

그러면(/^그러면 (success|failure)$/) do |result|
  expect(result).to eq("success")
  expect(@my_name).to have(4).characters
end
