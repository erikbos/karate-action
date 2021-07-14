Feature: fetching odd numbers

Scenario: Odd number 1

    Given url 'https://api.isevenapi.xyz/api/iseven/1'
    When method GET
    Then status 200
    And match $.iseven == false

Scenario: Odd number 3

    Given url 'https://api.isevenapi.xyz/api/iseven/3'
    When method GET
    Then status 200
    And match $.iseven == false
