Feature: validate email
    As a user i can validate a email

    Scenario: test email
        When I send the email
        Then api status code should be 200
        Then api response content type should be application/json