Feature: Exchange
  In order to use this gem from the command line, CLI commands
  for its main functionality have been included

  Scenario: Getting the rate of a single currency
    When I run `exchange_rate rate 2018-06-20 USD`
    Then the output should contain "2018-20-06, USD: 1.1578"
