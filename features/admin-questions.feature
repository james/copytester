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
    # create question
    And I fill in "Question" with "Which time period is being referred to?"
    And I press "Create Question"
    Then I should see the text "Which time period is being referred to?"
    # create answer
    When I fill in "Answer" with "January 2002 to December 2007"
    And I press "Create Answer"
    # update answer
    Then I should see the text "January 2002 to December 2007"
    When I choose "January 2002 to December 2007"
    And I press "Save Question"
