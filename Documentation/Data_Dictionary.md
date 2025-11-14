# Data Dictionary  
## Project: Healthcare Claims Denial Analytics & Automation  
## Author: Raja Kalyanapu  

---

## Introduction  
This Data Dictionary defines the structure and metadata of the claims dataset used in the project.  
It includes field names, data types, definitions, and example values.

---

# Claims Data Table

| Field Name | Data Type | Example | Description |
|------------|-----------|---------|-------------|
| claim_id | Integer | 102345 | Unique identifier for each claim |
| patient_id | Integer | 56478 | Unique identifier for each patient (mock) |
| date_of_service | Date | 2024-01-15 | The date service was provided |
| claim_submission_date | Date | 2024-01-20 | The date claim was submitted to payer |
| payer_name | Text | "BlueCross" | Insurance payer responsible for claim |
| billed_amount | Decimal | 850.00 | Amount billed by provider |
| paid_amount | Decimal | 620.00 | Amount paid by payer |
| denial_reason_code | Text | "CO-11" | Standard denial code |
| denial_reason_description | Text | "Diagnosis inconsistent" | Explanation of denial |
| denial_category | Text | "Coding" | Mapped denial group (Eligibility, Coding, Documentation, etc.) |
| cpt_code | Text | "99213" | Procedure code |
| icd10_code | Text | "E11.9" | Diagnosis code |
| claim_status | Text | "Denied" | Status of claim (Approved, Denied, Pending) |
| follow_up_required | Boolean | TRUE | Indicates if follow-up action is needed |
| corrected_claim_submitted | Boolean | FALSE | Whether a corrected claim has been resubmitted |
| turnaround_time_days | Integer | 14 | Days from submission to final decision |
| denial_amount | Decimal | 230.00 | Amount denied after adjudication |

---

# Notes and Transformations

### 🔹 Denial Category Mapping  
Denial categories were mapped from codes:

| Category | Codes Example |
|----------|---------------|
| Eligibility | CO-20, CO-21 |
| Coding | CO-11, CO-16 |
| Documentation | CO-50, CO-51 |
| Prior Authorization | CO-197 |
| Timely Filing | CO-29 |

---

# Derived Fields (Calculated)

| Field | Definition |
|--------|------------|
| clean_claim | claim_status = 'Approved' AND denial_amount = 0 |
| denial_rate | denied_claims / total_claims * 100 |
| financial_loss | SUM(denial_amount) by category/payer |
| days_to_payment | date_paid - date_of_service |

---

# Data Quality Considerations  
- No PHI or real patient data used  
- Mock values only  
- Null values replaced with default values  
- Duplicate claims removed  
- Categorical values normalized  

---

# Table Relationships  
**Single-table dataset** for simplicity.  
Additional tables (Patients, Providers, Procedures) can be added later for advanced modeling.

---

# Version  
**v1.0 — Created by:**  
**Raja Kalyanapu**  
Business Analyst  
