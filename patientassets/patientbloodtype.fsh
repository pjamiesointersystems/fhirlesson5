Instance: cfsb1739633596579
InstanceOf: Observation
Description: "JohnDoeBloodType"
Usage: #example
 
// Reference to Patient: John Doe
* subject = Reference(cfsb1739559272444)

* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#Laboratory "Laboratory"
* code = http://loinc.org#883-9 "ABO and Rh group"

* effectiveDateTime = "2024-02-14T10:30:00Z"
* valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0487"
* valueCodeableConcept.coding[0].code = #O+
* valueCodeableConcept.coding[0].display = "O Positive"

 // Reference to Practitioner: ExamplePractitioner
* performer = Reference(cfsb1739628662026)