Feature: Get the Post

  Scenario: Verify user can get single post
    Given url host
    And path '/posts/1'
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response