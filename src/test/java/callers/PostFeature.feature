Feature: caller feature example

  Background:
    * url baseUrl
    * path 'pet'

  Scenario: post request with JSON object
    * def requestBody =
       """
    {
    "category": {
        "id": 0,
        "name": "called feature"
      },
      "name": "called feature name",
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



