CREATE TABLE claims (
    claim_id INT PRIMARY KEY,
    patient_id INT,
    date_of_service DATE,
    claim_submission_date DATE,
    payer_name VARCHAR(100),
    billed_amount DECIMAL(10,2),
    paid_amount DECIMAL(10,2),
    denial_reason_code VARCHAR(20),
    denial_reason_description VARCHAR(255),
    denial_category VARCHAR(50),
    cpt_code VARCHAR(20),
    icd10_code VARCHAR(20),
    claim_status VARCHAR(20),
    follow_up_required BOOLEAN,
    corrected_claim_submitted BOOLEAN,
    turnaround_time_days INT,
    denial_amount DECIMAL(10,2)
);
