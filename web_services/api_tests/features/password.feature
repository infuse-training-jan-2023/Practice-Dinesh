Feature: validate password
    As a user i can validate a password 

    Scenario: Add item
        When I send the password
        Then api status code should be 200
        Then api response content type should be application/json