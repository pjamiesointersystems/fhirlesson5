Instance: cfsb1739720015765
InstanceOf: Condition
Description: "JohnDoeSuspectedHypertension"
Usage: #example
 
// Reference to Patient: John Doe
* subject = Reference(cfsb1739559272444)

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional "Provisional"
* category[0] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"

* code = http://snomed.info/sct#38341003 "Hypertensive disorder"


* onsetDateTime = "2024-02-14"
* recordedDate = "2024-02-14"

* severity = http://snomed.info/sct#6736007 "Mild"
 // Reference to Practitioner: ExamplePractitioner
* asserter = Reference(cfsb1739628662026)