
Feature: Get a item
    As a user I can get a item from todo

    Scenario: Get a item
        When I search for a item
        Then I should get a item
        Then the api status code should be 200
        Then the api response should be json
        
