Feature: ReqRes API Test


  Background:
    * url 'https://reqres.in/'
    * header Content-Type = 'application/json'
    * header x-api-key = 'reqres_51ddeeb846fe42f69be0e80343a54995'

    * def userJson = read('../data/user.json')
    * def userJsonFail = read('../data/userFail.json')
    * def failLoginResponse = read('../data/failLoginResponse.json')
    * def expectedLoginResponse = read('../data/expectedLoginResponse.json')
    * def expectedUser2Response = read('../data/expectedUser2Response.json')


  Scenario: Login de usuario exitoso
    Given path '/api/login'
    And request userJson
    When method POST
    Then status 200
    And match response == expectedLoginResponse

  Scenario: Fail en Login de usuario
    Given path '/api/login'
    And request userJsonFail
    When method POST
    Then status 400
    And match response == failLoginResponse


  Scenario: Buscar usuario por ID
    Given path '/api/users/2'
    When method GET
    Then status 200
    And match response.data.first_name == expectedUser2Response.data.first_name
    And match response.data.last_name == expectedUser2Response.data.last_name
    And match response.data.id == expectedUser2Response.data.id
    And match response.data.email == expectedUser2Response.data.email
    And match response == expectedUser2Response
