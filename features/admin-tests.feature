Feature: Admin Dashboard

  As an admin user
  I want to be able to CRUD tests
  So that I can manage the tests

  Scenario:
    When I go to /admin/copy_tests
    Then I should see the text "Tests"
    When I follow "New Test"
    And fill in "Name" with "Test 1"
    And press "Create Copy Test"
    Then I should see the text "Tests"
    And I should see the text "Test 1"
    When I follow "Edit name"
    And fill in "Test Name" with "Test 1 edited"
    And press "Save Copy Test"
    Then I should see the text "Tests"
    And I should see the text "Test 1 edited"

