Instance: cfsb1739559272444
InstanceOf: Patient
Description: "John Doe"
Usage: #example
 
* identifier.system = "http://hospital.example.org/mrn"
* identifier.value = "987654"
* identifier.use = #usual

* active = true

* name.text = "John A. Doe"
* name.given[0] = "John"
* name.given[1] = "A"
* name.family = "Doe"
* name.use = #official

* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"

* address.text = "1234 Elm Street, Springfield, IL 62704 USA"
* address.use = #home
* address.type = #both
* address.line = "1234 Elm Stree"
* address.city = "Springfield"
* address.state = "IL"
* address.postalCode = "62704"
* address.country = "USA"

* contact[1].telecom.system = #email

* communication.language = urn:ietf:bcp:47#en "English"
* communication.preferred = true

* contact[1].telecom.value = "johndoe@example.com"
* contact[1].telecom.use = #home


* contact.telecom.system = #phone
* contact.telecom.value = "+1 (217) 555-7890"
* contact.telecom.use = #home

* extension[0].url = "http://hl7.org/fhir/StructureDefinition/us-core-race"
* extension[0].valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-Race"
* extension[0].valueCodeableConcept.coding[0].code = #2106-3
* extension[0].valueCodeableConcept.coding[0].display = "White"


* extension[1].url = "http://hl7.org/fhir/StructureDefinition/us-core-ethnicity"
* extension[1].valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-Ethnicity"
* extension[1].valueCodeableConcept.coding[0].code = #2186-5
* extension[1].valueCodeableConcept.coding[0].display = "Not Hispanic or Latino"


 // Reference to Practitioner: ExamplePractitioner

 // Reference to Practitioner: ExamplePractitioner
* generalPractitioner = Reference(cfsb1739628662026)