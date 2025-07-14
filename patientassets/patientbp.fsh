Instance: cfsb1739649445671
InstanceOf: Observation
Description: "JohnDoeBP"
Usage: #example
 
// Reference to Patient: John Doe
* subject = Reference(cfsb1739559272444)

* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs" 
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* effectiveDateTime = "2024-02-14T10:30:00Z"

* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure" 
* component[0].valueQuantity.value = 140
* component[0].valueQuantity.unit = "mmHg" 
* component[0].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.code = #mm[Hg]

* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity.value = 90 
* component[1].valueQuantity.unit = "mmHg" 
* component[1].valueQuantity.system = "http://unitsofmeasure.org"


 // Reference to Practitioner: ExamplePractitioner
* performer = Reference(cfsb1739628662026)