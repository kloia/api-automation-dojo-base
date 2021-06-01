Feature: Use this feature for scenario outline tasks

  Scenario Outline: print table variables
    * print id
    Examples:
      | id |
      | 25 |
      | 35 |
      | 50 |

   Scenario Outline: get request with table <id>
     Given url baseUrl
     And path 'pet', id
     When method GET
     Then status 200
     And print response
     Examples:
       | id  |
       | 250 |
       | 251 |
       | 252 |
       | 253 |
       | 254 |
       | 255 |
  @regression @smoke
  Scenario Outline: get request with CSV <number>
    Given url baseUrl
    And path 'pet', number
    When method GET
    Then status 200
    And print response

    Examples:
    |read('data/data.csv')|