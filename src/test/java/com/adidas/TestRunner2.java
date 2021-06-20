package com.adidas;

import com.intuit.karate.junit5.Karate;

class TestRunner2 {

	String validatePetAPI = "Features/pets2.feature";
	String availablePetRecordsAPI = "Features/pets.feature";

	
	  @Karate.Test 
	  Karate availablePetRecordsAPI() { return Karate.run(availablePetRecordsAPI); }
	
	  @Karate.Test 
	  Karate validatePetAPI() { return Karate.run(validatePetAPI); }
	  
	  
	
}
