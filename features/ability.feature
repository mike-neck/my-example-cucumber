Ability:
  Rule: This is my rule.
  Background: This is background in my rule.
    Rule: This is another rule in my rule.
    Scenario: This is a scenario.
      Rule: This is third rule.
      Scenario: this is a second scenario.
        Given this block is unsafe
        When this block is safe
        Then this block will be passed
        And this block also be passed
        But this block will be failure

  Scenario: This is another scenario in another level.
    Given this block is safe
    Then this block will be passed
    And this block also be passed
    But this block will be failure
