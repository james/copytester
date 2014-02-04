Feature: Admin Dashboard

  As an admin user
  I want to be able to CRUD tests
  So that I can manage the tests

  Scenario:
    When I go to /admin/copy_tests
    Then I should see the text "Tests"
