
Feature: Delete a item
    As a user I can delete a item from todo
    
    Scenario: delete a item
        When I delete a item
        Then item should be deleted
        Then the api status code should be 200
        Then the api response should be json
