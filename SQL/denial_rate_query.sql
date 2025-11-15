SELECT 
    COUNT(*) AS total_claims,
    SUM(CASE WHEN claim_status = 'Denied' THEN 1 ELSE 0 END) AS denied_claims,
    ROUND(
        (SUM(CASE WHEN claim_status = 'Denied' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
    2) AS denial_rate_percentage
FROM claims;
