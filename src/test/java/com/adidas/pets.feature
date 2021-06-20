Feature: This feature perform the below operations
#Get "available" pets. Assert expected result


Background:
    Given url 'https://petstore.swagger.io/v2/pet'
    * def responseTestData = callonce read('ResponseTestData.feature')

   Scenario: Get "available" pets. Assert expected result
   Given url 'https://petstore.swagger.io/v2/pet/findByStatus'
   And path '?status=available'
   When method get
   Then status 200
   * print responseTestData.SearchAvailablePetRecords
   And match response contains deep responseTestData.SearchAvailablePetRecords
   And match response[0].id == 9223127596080643222
   
   
   Scenario: Get "Sold" pets. Assert expected result
   Given url 'https://petstore.swagger.io/v2/pet/findByStatus'
   And path '?status=Sold'
   When method get
   Then status 200
   * print responseTestData.SearchSoldPetRecords
   And match response contains deep responseTestData.SearchSoldPetRecords
   And match response[0].id == 9223127596080650308