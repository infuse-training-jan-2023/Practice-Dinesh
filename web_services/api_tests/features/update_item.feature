
Feature: Update a item
    As a user I can delete a item from todo
    
    Scenario: Update a item
        When I update a item
        Then item should be updated
        Then the api status code should be 201
        Then the api response should be json
