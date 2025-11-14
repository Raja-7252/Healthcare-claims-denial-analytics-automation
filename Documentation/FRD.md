# Functional Requirements Document (FRD)
## Project: Healthcare Claims Denial Analytics & Automation  
## Author: Raja Kalyanapu  

---

## 1. Introduction  
This document outlines the functional requirements for analyzing healthcare claim denials, generating dashboards, optimizing workflows, and assessing RPA automation opportunities.

---

## 2. System Overview  
The solution includes:

1. A SQL-based data processing layer  
2. A Power BI dashboard for executive insights  
3. Process workflow documentation (AS-IS & TO-BE)  
4. Automation feasibility study  
5. RPA-ready processes where applicable  

---

## 3. Functional Requirements  

### **3.1 Data Processing Requirements**
| ID | Requirement | Description |
|----|-------------|-------------|
| FR-01 | Import Claims Data | System must load claims data from CSV/Excel |
| FR-02 | Clean Data | Remove duplicates, nulls, invalid entries |
| FR-03 | Classify Denials | Map denial codes to categories (Eligibility, Coding, Documentation, etc.) |
| FR-04 | Generate KPIs | Clean claim rate, denial rate, avg reimbursement |

---

### **3.2 Dashboard Requirements**
| ID | Requirement | Description |
|----|-------------|-------------|
| FR-05 | Denial Trend Chart | Display denial rate over past 12 months |
| FR-06 | Top Denial Reasons | Show top 5 denial categories |
| FR-07 | Financial Impact | Estimate lost revenue from denials |
| FR-08 | Payer Comparison | Compare denial rates across insurance payers |
| FR-09 | Export Data | Allow export of summary table |

---

### **3.3 Workflow Requirements**
| ID | Requirement | Description |
|----|-------------|-------------|
| FR-10 | AS-IS Workflow | Document current claims process |
| FR-11 | TO-BE Workflow | Document optimized future workflow |
| FR-12 | Identify Bottlenecks | Highlight steps causing denials or rework |

---

### **3.4 Automation Requirements**
| ID | Requirement | Description |
|----|-------------|-------------|
| FR-13 | Identify Automatable Steps | Eligibility checks, missing info validation |
| FR-14 | RPA Feasibility | Perform cost/benefit and complexity analysis |
| FR-15 | Prepare PDD | Document automation-ready workflow |

---

## 4. Non-Functional Requirements  
| Category | Requirement |
|----------|-------------|
| Performance | Dashboard loads within 3 seconds |
| Usability | KPIs must be understandable by non-technical users |
| Scalability | System should support large datasets |
| Security | No PHI used; mock data only |
| Maintainability | SQL scripts must be modular |

---

## 5. Data Requirements  
Include:

- Claim ID  
- Patient ID (fake)  
- Date of Service  
- Procedure Code (CPT)  
- Diagnosis Code (ICD-10)  
- Billed Amount  
- Paid Amount  
- Denial Reason  
- Payer Name  

Detailed version will be in **Data_Dictionary.xlsx** later.

---

## 6. Assumptions  
- All data is mock or publicly available synthetic data  
- Stakeholders understand KPI definitions  
- RPA is evaluated for repetitive steps only  

---

## 7. Dependencies  
- SQL environment (MySQL/PostgreSQL)  
- Power BI Desktop  
- Visio/Draw.io  
- Excel for mock data  

---

## 8. Deliverables  
- SQL scripts  
- Dashboard  
- Workflow diagrams  
- Automation feasibility matrix  
- PDD document  

---

## 9. Approval  
This FRD is part of a self-guided portfolio project.  
Approval is simulated for demonstration.

**Prepared By:**  
**Raja Kalyanapu**  
Business Analyst  
