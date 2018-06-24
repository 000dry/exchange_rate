Feature: Exchange
  In order to use this gem from the command line, CLI commands
  for its main functionality have been included

  Scenario: Fetching the data from CLI should let notify user that command was run
    When I run `exchange_rate data`
    Then the output should contain "The exchange rates have been fetched and stored locally"

  Scenario: Getting the rate of a single currency
    When I run `exchange_rate rate 2018-06-20 USD`
    Then the output should contain "Rate USD, 2018-06-20: 1.1578"

  Scenario: Calculating exchange rates
    When I run `exchange_rate calculate 2018-06-20 USD JPY`
    Then the output should contain "Exchange rate USD / JPY, 2018-06-20: 0.0091"
