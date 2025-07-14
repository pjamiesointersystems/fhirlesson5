# Lesson 5: Introduction to Core FHIR Resources and RESTful Interactions

**Author**: Patrick W. Jamieson, M.D.  
**Organization**: InterSystems – Creative Data Technology Curriculum

---

## 🔍 Overview

FHIR Lesson 5 introduces foundational hands-on interaction with three of the most common FHIR resource types: **Patient**, **Observation**, and **MedicationRequest**. The lesson emphasizes composing valid resource instances, understanding required elements, and using HTTP operations to interact with a FHIR server.

---

## 🎯 Learning Objectives

- Understand the structure and use of core FHIR resources (Patient, Observation, MedicationRequest).
- Create JSON representations of valid FHIR resources.
- Perform RESTful operations using VS Code’s REST Client or curl.
- Develop practical knowledge of headers, endpoints, and typical response codes.

---

## 🧰 Repository Contents

| File | Purpose |
|------|---------|
| `patientbodysolution.json` | JSON structure for a basic Patient resource |
| `observationbodysolution.json` | JSON structure for a blood pressure Observation |
| `medrequestbodysolution.json` | JSON for a MedicationRequest for Lisinopril |
| `createpatientsolution.http` | HTTP request to create a Patient (`POST`) |
| `createobservationsolution.http` | HTTP request to create an Observation |
| `createmedicationreqsolution.http` | HTTP request to create a MedicationRequest |
| `updateobservationsolution.http` | HTTP `PATCH` request to update an Observation |
| `patchmedicationreqsolution.http` | HTTP `PATCH` to update MedicationRequest notes |
| `getrequests.http` | Sample `GET` requests for verifying data |
| `fhirheaderendpoint.http` | Template for setting base URL and headers |
| `FHIRLesson5.pptx` | Instructional slide deck outlining theory and walk-throughs |

---

## 🧪 Simulated Use Case

This lesson guides students through a basic scenario:

1. **Create a Patient**  
   Jane L. Smith, female, born 1979-08-10, is created with address and contact details:contentReference[oaicite:0]{index=0}.

2. **Add an Observation**  
   A blood pressure reading is recorded with LOINC codes:
   - Systolic: 150 mmHg
   - Diastolic: 95 mmHg:contentReference[oaicite:1]{index=1}.

3. **Order a Medication**  
   A new prescription for Lisinopril 10 mg once daily is added, with an explanatory note:contentReference[oaicite:2]{index=2}.

---

## ▶️ How to Use

### ✅ Prerequisites

- A working FHIR server (e.g., HAPI FHIR, InterSystems IRIS for Health)
- REST Client extension in VS Code or Postman
- Basic understanding of HTTP request methods

### 🧪 Steps

1. Configure your `fhirheaderendpoint.http` file with the server base URL and necessary authorization headers.
2. Use the `.http` files to sequentially send requests (`POST`, `PATCH`, `GET`).
3. Monitor responses to validate successful resource creation or updates.
4. Use IDs from `POST` responses to parameterize your `GET` or `PATCH` requests.

---

## 📘 Example Resource Snippets

### Patient

```json
"name": [{ "given": ["Jane L"], "family": "Smith" }],
"gender": "female",
"birthDate": "1979-08-10"


Observation


"code": { "coding": [{ "code": "85354-9", "display": "Blood pressure panel" }] },
"component": [
  { "code": { "code": "8480-6" }, "valueQuantity": { "value": 150 } },
  { "code": { "code": "8462-4" }, "valueQuantity": { "value": 95 } }
]
MedicationRequest

"medicationCodeableConcept": {
  "coding": [{ "code": "23488011000036103", "display": "Lisinopril 10 mg tablet" }]
},
"dosageInstruction": [{ "text": "Take one 10mg tablet once daily" }]
🔍 Common Tasks
Use GET requests to confirm resource creation.

Use PATCH to modify notes or partial data.

Apply proper SNOMED or LOINC codes for semantic accuracy.

Review server responses for status codes like 201 Created, 400 Bad Request, or 422 Unprocessable Entity.

📚 Reference Resources
FHIR REST API Specification

FHIR Patient Resource

FHIR Observation Resource

FHIR MedicationRequest

🧠 Attribution
This resource is part of the InterSystems “Creative Data Technology” curriculum to train next-generation FHIR developers using real-world data flows.





