Feature: Please use this feature for your print tasks

  Scenario: print task
    * print "hello world"

  Scenario: variable definition
    * def hello = 5
    * print 'hello variable -> ', hello

  Scenario: Config file parameters
   # * print obj
    * def obj = 'hello'
    * print obj


  Scenario: json definition
    * def myJSON =
    """
    {
      "name" : "test",
      "number" : 1234
    }
    """
    * print myJSON





