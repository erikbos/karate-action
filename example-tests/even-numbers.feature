Feature: fetching even numbers

Background:
    * url url

Scenario: even number 2

    Given path '/api/iseven/2'
    When method GET
    Then status 200
    And match $.iseven == true

Scenario: even number 4

    Given path '/api/iseven/4'
    When method GET
    Then status 200
    And match $.iseven == true