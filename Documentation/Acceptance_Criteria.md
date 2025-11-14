# Acceptance Criteria  
## Project: Healthcare Claims Denial Analytics & Automation  
## Author: Raja Kalyanapu  

---

## 1. Introduction  
This document contains the formal Acceptance Criteria for the system features defined in the User Stories document.  
Criteria follow the **Gherkin (Given–When–Then)** format used in Agile environments.

---

# 2. Acceptance Criteria by Feature

---

## 🟦 AC-01: Denial Overview Dashboard  
**User Story:** US-01  

### Acceptance Criteria  
**Scenario:** View denial summary  
- **Given** the dashboard is loaded  
- **When** the user opens the denial overview page  
- **Then** total claims, denied claims, and denial rate must appear  
- **And** metrics must visually match SQL-calculated values  
- **And** filters must apply correctly  

---

## 🟦 AC-02: Top Denial Reasons  
**User Story:** US-02  

### Acceptance Criteria  
- **Given** denial data is categorized  
- **When** the dashboard loads  
- **Then** the system shows top 5 denial categories  
- **And** includes % of total denials  
- **And** clicking on a category filters related claims  

---

## 🟦 AC-03: Denials by Payer  
**User Story:** US-03  

### Acceptance Criteria  
- **Given** claims contain payer names  
- **When** the user selects payer comparison  
- **Then** a table must show payer vs denial rate  
- **And** sorting must work on each column  
- **And** denial rate must calculate as:  
  `denied_claims / total_claims * 100`  

---

## 🟦 AC-04: Claim-Level Details View  
**User Story:** US-04  

### Acceptance Criteria  
- **Given** a denied claim exists  
- **When** the user clicks on a claim ID  
- **Then** details show billed amount, diagnosis code, denial reason  
- **And** recommended next step appears  
- **And** user can return to summary  

---

## 🟦 AC-05: Clean Claim Rate Chart  
**User Story:** US-05  

### Acceptance Criteria  
- **Given** a month has claim data  
- **When** user views the clean claim chart  
- **Then** clean claim % must be shown accurately  
- **And** trend line must display at least 6 months  

---

## 🟦 AC-06: Automate Eligibility Verification  
**User Story:** US-06  

### Acceptance Criteria  
- **Given** eligibility API is available  
- **When** the bot runs  
- **Then** it must retrieve eligibility information  
- **And** write output to structured format  
- **And** flag any failed validations  

---

## 🟦 AC-07: Automate Missing Documentation Checks  
**User Story:** US-07  

### Acceptance Criteria  
- **Given** claims require documents  
- **When** bot checks for completeness  
- **Then** missing documents are logged  
- **And** bot generates email templates for follow-up  

---

## 🟦 AC-08: Denial Root Cause Insights  
**User Story:** US-08  

### Acceptance Criteria  
- **Given** denial categories exist  
- **When** viewing insights  
- **Then** Pareto chart must correctly calculate contributions  
- **And** trend chart must reflect accurate monthly data  

---

## 🟦 AC-09: Export Reports  
**User Story:** US-09  

### Acceptance Criteria  
- **Given** data is filtered  
- **When** user clicks “Export”  
- **Then** report generates with applied filters  
- **And** exports must include: Excel, PDF  

---

## 🟦 AC-10: Financial Impact Calculator  
**User Story:** US-10  

### Acceptance Criteria  
- **Given** denied claims have billed amounts  
- **When** user views impact page  
- **Then** total $$ at risk must be shown  
- **And** breakdown by payer must be visible  

---

## 🟦 AC-11: TO-BE Workflow View  
**User Story:** US-11  

### Acceptance Criteria  
- **Given** optimized workflow exists  
- **When** user opens TO-BE diagram  
- **Then** automation steps are highlighted  
- **And** removed steps are clearly marked  

---

## 🟦 AC-12: Automation Feasibility  
**User Story:** US-12  

### Acceptance Criteria  
- **Given** process steps are documented  
- **When** feasibility matrix is completed  
- **Then** each step gets a score (High/Medium/Low)  
- **And** final automation score is generated between 0–100  
