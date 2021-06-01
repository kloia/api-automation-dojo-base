Feature: Use this feature for POST with JSON object

  @smoke
  Scenario: post with external JSON
    Given url baseUrl
    And path 'pet'
    * def requestBody = read('classpath:data/data.json')
    * set requestBody.name = "newly added"
    And request requestBody
    When method POST
    Then status 200
    And print response
    And match requestBody.name == response.name
    And match response.id == '#number'
    And match requestBody.status == response.status