Feature: fetching odd numbers

Background:
    * url url

Scenario: Odd number 1

    Given path '/api/iseven/1'
    When method GET
    Then status 200
    And match $.iseven == false

Scenario: Odd number 3

    Given path '/api/iseven/3'
    When method GET
    Then status 200
    And match $.iseven == false
