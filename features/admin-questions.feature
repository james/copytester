Feature: Admin for questions

  As an admin user
  I want to be able to CRUD questions
  So that I can manage the tests

  Scenario:
    # Create test
    When I go to /admin/copy_tests
    And I follow "New Test"
    And fill in "Name" with "Test 1"
    And press "Create Copy Test"
    And I follow "edit"
    # create sample
    And fill in "Copy Text 1 Name" with "Copy 1"
    And press "Create Copy Sample"
    And I should see the text "Copy 1"
    # create question
    And I fill in "Question" with "Which time period is being referred to?"
    And I press "Create Question"
    Then I should see the text "Which time period is being referred to?"
    # create answer
    When I fill in "Answer" with "January 2002 to December 2007"
    And I press "Create Answer"
    Then I should see the text "January 2002 to December 2007"
