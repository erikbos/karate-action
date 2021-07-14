Feature: fetching even numbers

Scenario: even number 2

    Given url 'https://api.isevenapi.xyz/api/iseven/2'
    When method GET
    Then status 200
    And match $.iseven == true

Scenario: even number 4

    Given url 'https://api.isevenapi.xyz/api/iseven/4'
    When method GET
    Then status 200
    And match $.iseven == true