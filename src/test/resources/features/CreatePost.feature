Feature: Create Post

  Background:
    * def body = read("classpath://json//createPost.json")

  Scenario: Verify user can create booking
    Given url host
    And path '/posts'
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And request body
    When method post
    Then status 201
    And print response

