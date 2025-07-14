Instance: cfsb1739719571656
InstanceOf: Condition
Description: "JohnDoeDiabetes"
Usage: #example
 
// Reference to Patient: John Doe
* subject = Reference(cfsb1739559272444)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed" 

* category[0] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item" 
* code = http://snomed.info/sct#44054006 "Type 2 Diabetes Mellitus" 
 
* onsetDateTime = "2015-06-01"
* recordedDate = "2024-02-14"

* severity = http://snomed.info/sct#24484000 "Severe"
 // Reference to Practitioner: ExamplePractitioner
* asserter = Reference(cfsb1739628662026)