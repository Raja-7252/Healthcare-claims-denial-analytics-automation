SELECT 
    denial_category,
    COUNT(*) AS total_denials,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM claims WHERE claim_status = 'Denied'), 2) 
        AS percentage_of_denials
FROM claims
WHERE claim_status = 'Denied'
GROUP BY denial_category
ORDER BY total_denials DESC;
