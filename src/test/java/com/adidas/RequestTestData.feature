Feature: Exchange-APIs Response

  Scenario:
    * def CreatePetResquest =
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
	
	
    * def SearchAddressGU97PG =
    """
    [
      {
    "country": "UNITED KINGDOM",
    "uaid": "00200516CLYTNCRT    MERTNHS                0000                  DOWN",
    "isExpandable": false,
    "isSelected": true,
    "postcode": "GU9 7PG",
    "addressLine1": "MERTON HOUSE, CLAYTON COURT",
    "addressLine2": "DOWNING STREET",
    "addressLine3": "FARNHAM",
    "addressLine4": "SURREY",
    "sid": "00000000000%24%40sid%5E%25%2B0%2B0%25GU9%207PG8v",
    "isComplete": true
      }
    ]
    """
    * def SearchAddressGU147GB =
    """
    [
      {
    "country": "UNITED KINGDOM",
    "uaid": "00200515BRNDHS      000000000001           0000                  CONB",
    "isExpandable": false,
    "isSelected": true,
    "postcode": "GU14 7GB",
    "addressLine1": "1, BRAND HOUSE",
    "addressLine2": "COOMBE WAY",
    "addressLine3": "FARNBOROUGH",
    "addressLine4": "HAMPSHIRE",
    "sid": "00000000000%24%40sid%5E%25%2B0%2B0%25GU14%207GB3W",
    "isComplete": true
      }
    ]
    """
    * def FindCompanyResponse =
    """
    {
  "company": [
    {
      "registrationNumber": "99999999",
      "legalEntity": "L",
      "addressLine1": "THE SIR JOHN PEACE BUILDING",
      "addressLine2": "EXPERIAN WAY",
      "addressLine3": "NOTTINGHAM",
      "postcode": "NG80 1ZZ",
      "SICCode": "7210",
      "status": "A",
      "name": "TEST LIMITED"
    },
    {
      "registrationNumber": "99999998",
      "legalEntity": "L",
      "addressLine1": "THE SIR JOHN PEACE BUILDING",
      "addressLine2": "EXPERIAN WAY",
      "addressLine3": "NOTTINGHAM",
      "postcode": "NG80 1ZZ",
      "SICCode": "7415",
      "status": "A",
      "name": "TEST (COMPANY 2) LIMITED"
    }
  ]
}
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
    