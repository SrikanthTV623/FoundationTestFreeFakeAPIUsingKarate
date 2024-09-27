Feature: Update the Post

  Background:
    * def body = read("classpath://json//updatePost.json")

  Scenario: Verify user can get and update the  single post
    Given url host
    And path '/posts/1'
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response

    Given url host
    And path '/posts/1'
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And request body
    When method put
    Then status 200
    And print response

