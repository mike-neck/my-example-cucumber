Business Need: failure in when & given
  Background: to test handling error of when and given
    Scenario: error in when
      Given this block is safe
      When this block is unsafe
      Then this code won't be executed

    Scenario: error in given
      Given this block is unsafe
      When this block is safe
      Then this code won't be executed
