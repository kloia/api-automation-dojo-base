Feature: Use this feature for PUT request

  Background:
    Given url baseUrl
    And path 'pet'

  Scenario: put request example
    And def obj =
    """
    {
  "photoUrls": [
    "string"
  ],
  "name": "doggie",
  "id": 9222968140497187070,
  "category": {
    "name": "new Pet - 1",
    "id": 0
  },
  "tags": [
    {
      "name": "string",
      "id": 0
    }
  ],
  "status": "available"
}
    """
    And set obj.name = 'new name version 2'
    And request obj
    When method PUT
    Then status 200
    And match response == obj
    And print response