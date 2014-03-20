Feature: Admin for copy texts

  As an admin user
  I want to be able to CRUD test copy
  So that I can manage the tests

  Scenario:
    When I go to /admin/copy_tests
    And I follow "New Test"
    And fill in "Name" with "Test 1"
    And press "Create Copy Test"
    And I follow "edit"
    And fill in "Name" with "Copy 1"
    And I check "Published"
    And press "Create Copy Sample"
    And I should see the text "Copy 1 (Published)"
    And I should see the text "Published"
    And fill in "Name" with "Copy 1 edited"
    And I uncheck "Published"
    And press "Save Copy Sample"
    And I should see the text "Copy 1 edited (Unpublished)"


