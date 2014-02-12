Feature: Viewing Test Sample
  As an testee
  I want to be view a sample test
  So that I can answer questions on it

  Scenario:
    Given I have a copy test called "Copy Test 1"
    And "Copy Test 1" has a copy sample called "Copy Sample 1" with content "#This is the test"
    And "Copy Test 1" has the question "What was this?"
    And "What was this?" has the answer "A test"
    And "What was this?" has the answer "An illusion"
    When I view Copy Sample "Copy Sample 1"
    Then I should see the html "<h1>This is the test</h1>"
    When I choose "A test"
    And I press "Save answers"
    Then I should see the text "Thankyou"
    And "A test" should have been chosen 1 times