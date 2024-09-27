Feature: Get List Of Posts

  Scenario: Verify user can get list of posts
    Given url host
    And path '/posts'
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response