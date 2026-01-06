SELECT patient_id, COUNT(*)
FROM dim_patient
WHERE is_current = 'Y'
GROUP BY patient_id
HAVING COUNT(*) > 1;


SELECT *
FROM fact_patient_visit
WHERE treatment_cost < 0;


SELECT f.*
FROM fact_patient_visit f
LEFT JOIN dim_patient p ON f.patient_pk = p.patient_pk
WHERE p.patient_pk IS NULL;


SELECT *
FROM dim_patient
WHERE effective_end < effective_start;


