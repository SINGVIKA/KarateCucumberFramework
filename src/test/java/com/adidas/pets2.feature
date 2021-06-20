Feature: This feature perform the below operations
#Get pets. Assert expected result
#Post a new available pet to the store. Assert new pet added.
#Update this pet status to "sold". Assert status updated.
#Delete this pet. Assert deletion.

Background:
    Given url 'https://petstore.swagger.io/v2/pet'
    * def responseTestData = callonce read('ResponseTestData.feature')
    * def requestTestData = callonce read('RequestTestData.feature')
    * def requestData = requestTestData.CreatePetResquest
    * def expectedResponse = responseTestData.CreatePetResponse
    * def expectedDeleteResponse = responseTestData.ExpectedDeleteResponse
    * def requestHeaders = read('RequestHeader.json')
    
    
   @ValidatePetRecordCreation
   Scenario Outline: Create, Retrieve & Validate - New Pet Record
    * set requestData.id = 0
    * set requestData.category.id = <id>
    * set requestData.category.name = "<categoryName>"
    * set requestData.name = "<animalName>"
    * set requestData.photoUrls[0] = "<photoUrls>"
    * set requestData.tags[0].id = <id>
    * set requestData.tags[0].name = "<tagName>"
    
    * set expectedResponse.id = 0
    * set expectedResponse.category.id = <id>
    * set expectedResponse.category.name = "<categoryName>"
    * set expectedResponse.name = "<animalName>"
    * set expectedResponse.photoUrls[0] = "<photoUrls>"
    * set expectedResponse.tags[0].id = <id>
    * set expectedResponse.tags[0].name = "<tagName>"
     
    #Create New Record
    And request requestData
    And headers requestHeaders
    When method post
    Then status 200
    * print "Create New Record : " 
    * print  response
    * def newID = response.id
    * set requestData.id = newID
    * set expectedResponse.id = newID
    
    #Retrieve Record
    And path '/'+newID
    And headers requestHeaders
    When method get
    Then status 200
    * print "Retrieve New Record : " 
    * print  response
    * print "Expected New Record : " 
    * print  expectedResponse
    And match response == expectedResponse

    
    #Update Record
    * set requestData.status = "Sold"
    * set expectedResponse.status = "Sold"
    And request requestData
    * print "Request Data  "
    * print requestData
    And headers requestHeaders
    When method put
    Then status 200
    * print "Updated Exiting Record : " 
    * print response
    * print "Expected Updated Record : " 
    * print expectedResponse
    And match response == expectedResponse
    
    #Retrieve Record
    And path '/'+newID 
    And headers requestHeaders
    When method get
    Then status 200
    * print "Updated New Record : "
    * print  response
    * print "Expected Updated New Record : "
    * print expectedResponse
    And match response == expectedResponse
    
    #Delete Record
    And path '/'+newID   
    And headers requestHeaders
    When method delete
    Then status 200
    * expectedDeleteResponse.message = ""+newID+""
    And match response == expectedDeleteResponse
    
    Examples:
      | id  |categoryName|animalName|photoUrls      |  tagName           |
      | 919 |Animal      |Tiger		  |www.adidas.com |  WildAnimal        |
      