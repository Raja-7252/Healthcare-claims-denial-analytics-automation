# Process Definition Document (PDD)  
## Process: Eligibility Verification & Denial Categorization Automation  
## Project: Healthcare Claims Denial Analytics & Automation  
## Author: Raja Kalyanapu  

---

# 1. Introduction  
This PDD documents the detailed process steps, rules, inputs, outputs, and exception handling for the automation of:

1. **Eligibility Verification**  
2. **Denial Categorization**

These are high-volume, rule-based steps within the healthcare claims workflow and provide the fastest ROI.

---

# 2. Process Objectives  

### 🎯 Eligibility Verification Automation  
- Reduce manual verification time  
- Improve accuracy of insurance eligibility checks  
- Identify missing or invalid policy information  

### 🎯 Denial Categorization Automation  
- Automatically classify denial reasons into categories  
- Reduce manual sorting and coding work  
- Provide structured data for analytics dashboards  

---

# 3. Process Scope  

### ✔ In Scope  
- Reading claim data  
- Extracting patient, payer, and service details  
- Performing eligibility API/portal checks  
- Extracting denial reason codes  
- Mapping codes into denial categories  
- Writing outputs back to database or Excel  

### ✘ Out of Scope  
- Coding audit  
- Clinical validation  
- Appeal drafting  
- System enhancement work  

---

# 4. Process Flow (High-Level)

## **Eligibility Verification – AS-IS Manual**
1. Billing analyst opens claim record  
2. Logs into payer eligibility portal/EHR  
3. Enters patient details  
4. Reviews eligibility response  
5. Marks claim as eligible OR flags issue  
6. Updates Excel/claims system  

## **Eligibility Verification – TO-BE Automated**
1. Bot reads claim input file  
2. Bot logs into payer portal or API  
3. Bot enters patient/payer information  
4. Bot extracts eligibility result  
5. Bot writes output to database Excel  
6. Bot flags exceptions  

---

# 5. Inputs & Outputs  

## **Inputs**
| Field | Format | Source |
|-------|--------|--------|
| patient_id | Number | Claims file |
| payer_name | Text | Claims file |
| date_of_service | Date | Claims file |
| policy_number | Text | EHR/Eligibility portal |
| denial_reason_code | Text | Claims system |

## **Outputs**
| Output | Description |
|--------|-------------|
| eligibility_status | Eligible / Not Eligible |
| denial_category | Eligibility / Coding / Documentation / Auth / Timely Filing |
| exception_flag | Indicates failed validations |
| audit_log | Bot activity record |

---

# 6. Business Rules  

### **Eligibility Verification Rules**  
- If policy is inactive → flag as "Not Eligible"  
- If policy covers CPT code → Eligible  
- If API returns error → send to exceptions queue  

### **Denial Categorization Rules**  
- CO-11 → Coding  
- CO-50 → Documentation  
- CO-29 → Timely filing  
- CO-20, CO-21 → Eligibility  
- CO-197 → Prior Authorization  

---

# 7. Exception Handling  
| Exception Type | Bot Action |
|----------------|------------|
| API timeout | Retry 3 times, then log exception |
| Missing policy number | Log exception + route to manual queue |
| Portal unavailable | Retry 3 times |
| Unrecognized denial code | Mark as "Other" |

---

# 8. System Details  
| System | Purpose |
|--------|---------|
| UiPath Studio / Orchestrator | Automation execution |
| Payer Portal / API | Eligibility checks |
| Excel / SQL Database | Input/output storage |

---

# 9. Volume & Frequency  
- Claims per month: **14,000**  
- Eligibility checks/day: **~700**  
- Bot runtime: **Continuous or scheduled intervals**  

---

# 10. Security & Compliance  
- No PHI is used in this project  
- Mock data only  
- Bot credentials stored securely  
- Audit logs maintained  

---

# 11. Requirements for Bot Deployment  
- Stable internet access to payer portals  
- Access credentials  
- UiPath Orchestrator environment  
- Input/output folders  
- Logging and monitoring setup  

---

# 12. Success Criteria  
- 95%+ accuracy in eligibility results  
- 80%+ reduction in manual rework  
- 20–30 hours saved weekly  
- Accurate categorization of denial codes  
- Clean audit logs  

---

# 13. Approval  
This PDD is prepared as part of a portfolio demonstration project and is considered approved for documentation purposes.

**Prepared By:**  
**Raja Kalyanapu**  
Business Analyst & RPA Analyst  
