Feature: Use this feature for prints


  Scenario: reading external data file
    * def jsonFile = read('classpath:data/data.json')
    * set jsonFile.name = 'my new Name'
    * print jsonFile