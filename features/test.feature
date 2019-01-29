Feature: As a user I want to return the index of the array
  where the sum of integers at the index on the left is equal to the sum of integers on the right.


#  one way of implementation
  Scenario: Find index
    Given I visit the arrays challenge page
    Then I should be able to find the index of the first array
    And I should be able to find the index of the second array
    And I should be able to find the index of the third array

#    second way of implementation
  Scenario:Find index
    Given I visit the arrays challenge page
    Then I should be able to find the index
