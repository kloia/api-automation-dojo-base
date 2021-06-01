Feature: use this feature for GET requests

  Background:
    * url baseUrl
    * path 'pet'

   Scenario: simple get scenario
     Given url 'https://petstore.swagger.io/v2/pet/250'
     When method GET
     Then status 200
     And print response

   Scenario: simple assertions
     Given url 'https://petstore.swagger.io/v2/pet/250'
     When method GET
     Then status 200
     And match response.id == 250
     And match response.name == '#string'
     And match response.status == '#notnull'
    # And karate.log('response match edildi')


  Scenario: path parameters
    Given url baseUrl
    And def id = 250
    And path 'pet', id
    When method GET
    Then status 200
    And match response.id == id
    And match responseHeaders['Content-Type'][0] == 'application/json'

  Scenario: query params
    Given path 'findByStatus'
    And param status = 'pending'
    When method GET
    Then print response


  Scenario: query params with different value
    Given path 'findByStatus'
    And param status = 'pending'
    When method GET
    Then status 200
    And print response
    And match each response[*].status == 'pending'
    And match each response contains {'status' : 'pending'}
