Feature: Testing different request on the gorest application

  Scenario: Check if the gorest application can be accessed by users
    When User sends a GET request to users endpoint
    Then User must get back a valid status code 200

  Scenario: Create a new user & verify if the user is added
    When User create a new user by providing the information name,email,gender and status
    Then User verify user is created

  Scenario: Update a created user & verify if the user is updated
    When User update with "<name>" and "<email>"
    Then  User verify that user is updated

    Scenario: Delete a created user & verify if the user is deleted
      When User delete created user with id
      Then User verify that user is deleted and get the status code 204



