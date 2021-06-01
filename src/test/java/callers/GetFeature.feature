Feature: caller get feature

  Scenario: get callers
    Given url baseUrl
    And path 'pet', number
    When method GET

