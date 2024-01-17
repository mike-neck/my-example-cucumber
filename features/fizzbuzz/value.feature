Feature: Value Class functionality

  The Value Class has two properties: a number and a processed value.
  When the get method is called, if the processed value is nil or "",
  it should return the string representation of the number.
  Otherwise, it should return the processed value string.

  Scenario Outline: Testing get method of Value Class
    Given a Value with a number <number> and processed value is <processedValue>
    When the get method of the Value is called
    Then it should return the string "<result>"

    Examples:
      | number | processedValue | result   |
      | 5      |                | 5        |
      | 3      | ""             | 3        |
      | 2      | "two"          | two      |
      | 15     |                | fizzbuzz |
      | 22     |                | 22       |

  Scenario Outline: Testing append method of Value
    Given a Value with a number <number> and processed value is "<processedValue>"
    When called append method with a string <param>
    Then it becomes a new Value with <another_number> and <another_value>

    Examples:
      | number | processedValue | param | another_number | another_value |
      | 1      |                | foo   | 1              | foo           |
      | 1      | foo            | bar   | 1              | foobar        |
