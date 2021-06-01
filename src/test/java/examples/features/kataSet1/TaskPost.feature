Feature: Use this feature for POST request
  Background:
    * url baseUrl
    * path 'pet'

  Scenario: post request with JSON object
    * def requestBody =
       """
    {
    "category": {
        "id": 0,
        "name": "new Pet - 1"
      },
      "name": "doggie",
      "photoUrls": [
        "string"
      ],
    "tags": [
       {
        "id": 0,
        "name": "string"
       }
     ],
    "status": "available"
    }
    """
    And request requestBody
    When method POST
    Then status 200
    And print response

