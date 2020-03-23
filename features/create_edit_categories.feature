Feature: Create and Edit Category by Admin
    As a blog administrator
    To manage the post and enabel easy discovery
    I should be able to create and edit the categories and assign to post

Background:
    Given the blog is set up
    And I am logged into the admin panel

Scenario: Create the Category
    Given I am on the new categories page
    When I fill in "category_name" with "Corona"
    And I fill in "category_keywords" with "Epidemic"
    And I fill in "category_permalink" with "cdc"
    And I fill in "category_description" with "Let's Fight"
    And I press "Save"
    Then I should see "Corona"
    Then I should see "Epidemic"
    Then I should see "cdc"
    Then I should see "Let's Fight"
Scenario: Edit the Category
    Given I am on the new categories page
    When I fill in "category_name" with "Corona"
    And I fill in "category_keywords" with "Epidemic"
    And I fill in "category_permalink" with "cdc"
    And I fill in "category_description" with "Let's Fight"
    And I press "Save"
    Then I should see "Corona"
    Then I should see "Epidemic"
    Then I should see "cdc"
    Then I should see "Let's Fight"
    Then I follow "Corona"
    And I fill in "category_keywords" with "Epidemic Level 4"
    And I fill in "category_permalink" with "cdc"
    And I fill in "category_description" with "Let's Fight"
    And I press "Save"
    Then I should see "Epidemic Level 4"

    