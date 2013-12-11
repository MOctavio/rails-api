Feature: Manage Users
  In order to manage our client list
  As an user
  I want to be able to CRUD Clients

  Scenario Outline: Creating a new Client
    Given I am on the homepage
    And I follow Clients
    Then I should be on the Clients index page
    Given I follow New Client
    And I fill in Last Name with "<last_name>"
    And I fill in First Name with "<first_name>"
    And I fill in City with "<city>"
    And I fill in Country with "<country>"
    And I fill in Primary Phone with "<primary_phone>"
    And I fill in Secondary Phone with "<secondary_phone>"
    And I fill in E-Mail with "<email>"
    When I press Save
    Then I should see Client was successfully created.
    And I should be on the Clients index page
    
    Examples:
    | last_name   | first_name    | city    | country    | primary_phone   | secondary_phone | email                |
    | Jimenez     | Mario Octavio | Heredia | Costa Rica | (506)83539397   | (506)83539397   | jimenez303@gmail.com |