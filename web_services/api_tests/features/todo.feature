Feature: get a todo
    As a user i can get a todo

    Scenario: Add item
        When I send the number
        Then api status code should be 200
        Then api response content type should be application/json