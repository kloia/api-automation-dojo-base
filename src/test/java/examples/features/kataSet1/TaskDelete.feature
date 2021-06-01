Feature: Use this feature for DELETE request

  Scenario: delete request
    Given url baseUrl
    And path 'pet', 250
    When method DELETE
    Then status 200
    And match response.message == '250'