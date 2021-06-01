@smoke
Feature: Use this feature for call features tasks

  Scenario: call another feature file
    Given def calledFeature = call read('classpath:callers/PostFeature.feature')
    Then match calledFeature.responseStatus == 200
    And print calledFeature.response

  Scenario: call get feature with id
    Given def calledFeature = call read('classpath:callers/GetFeature.feature'){number : 250}
    Then print calledFeature.response
    Then match calledFeature.responseStatus == 200
