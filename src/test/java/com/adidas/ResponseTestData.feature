Feature: Exchange-APIs Response

  Scenario:
    * def CreatePetResponse =
		"""
   {
  "id": 0,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "doggie",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
	"""
	
	 * def SearchPetRecords =
		"""
 [
     {
        "id": 9223127596080643358,
        "category": {
            "id": 0,
            "name": "string"
        },
        "name": "doggie",
        "photoUrls": [
            "string"
        ],
        "tags": [
            {
                "id": 0,
                "name": "string"
            }
        ],
        "status": "available"
    }
    
]
	"""
	
	 * def SearchAvailablePetRecords =
		"""
 [
     {
        "id": 9223127596080643358,
        "category": {
            "id": 0,
            "name": "string"
        },
        "name": "doggie",
        "photoUrls": [
            "string"
        ],
        "tags": [
            {
                "id": 0,
                "name": "string"
            }
        ],
        "status": "available"
    }
    
]
	"""
	
	
	* def SearchSoldPetRecords =
		"""
 [
     {
  "id": 9223127596080650308,
  "category": {
    "id": 919,
    "name": "Animal"
  },
  "name": "Tiger",
  "photoUrls": [
    "www.adidas.com"
  ],
  "tags": [
    {
      "id": 919,
      "name": "WildAnimal"
    }
  ],
  "status": "Sold"
}
    
]
	"""
	
	
    * def ExpectedDeleteResponse =
    """
    {"code":200,"type":"unknown","message":"9223127596080644427"}
    
    """
    * def GetCompanyProfileResponse =
    """
    {
  "registrationNumber": "99999999",
  "businessName": "TEST COMPANY LIMITED",
  "businessStarted": "1789-07-14",
  "registeredAddressLine1": "THE SIR JOHN PEACE BUILDING",
  "registeredAddressLine2": "EXPERIAN WAY",
  "registeredAddressLine3": "NOTTINGHAM",
  "registeredAddressPostcode": "NG80 1ZZ",
  "differentTradingAddress": "N",
  "tradingAddressLine1": "Riverleen House",
  "tradingAddressLine2": "Electric Avenue",
  "tradingAddressLine3": "NOTTINGHAM",
  "tradingAddressLine4": "Nottinghamshire",
  "tradingAddressPostcode": "NG80 1RH",
  "SICCode": "7210",
  "accountancyFirm": "SERIOUS AUDITORS LLP",
  "existingBusinessAccountHeld": "N",
  "contact": [
    {
      "type": "Director",
      "title": "MR",
      "firstName": "MICKEY",
      "lastName": "MOUSE",
      "dateOfBirth": "1928-11-18",
      "individualAddressLine1": "TOP FLOOR EXPERIAN WAY",
      "individualAddressLine3": "NOTTINGHAM",
      "individualAddressPostcode": "NG80 1ZZ",
      "nationality": "AMERICAN"
    },
    {
      "type": "Secretary",
      "firstName": "JOHN",
      "middleName": "WILLIAM",
      "lastName": "SMITH",
      "individualAddressLine1": "EXPERIAN WAY",
      "individualAddressLine3": "NOTTINGHAM",
      "individualAddressPostcode": "NG80 1ZZ"
    },
    {
      "type": "Shareholder",
      "firstName": "Unknown",
      "lastName": "Individual",
      "businessName": "TEST HOLDINGS LTD",
      "businessRegistrationNumber": "99999998"
    }
  ],
  "currency": "GBP",
  "fundedInLast3Years": "No",
  "expected12MonthTurnover": 621000000,
  "tradeWithNonUKCustomersSuppliers": "No",
  "nonUKCustomerSupplier10": "No",
  "numberOfEmployees": 3580
}
    """
    