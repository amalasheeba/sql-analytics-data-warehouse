--Total Spend per Patient
SELECT
    p.patient_name,
    SUM(f.treatment_cost) OVER (PARTITION BY p.patient_name) AS total_spend
FROM fact_patient_visit f
JOIN dim_patient p ON f.patient_sk = p.patient_sk;

--Rank Doctors by Revenue
SELECT
    d.doctor_name,
    SUM(f.treatment_cost) AS revenue,
    RANK() OVER (ORDER BY SUM(f.treatment_cost) DESC) AS revenue_rank
FROM fact_patient_visit f
JOIN dim_doctor d ON f.doctor_sk = d.doctor_sk
GROUP BY d.doctor_name;

--Running Total of Revenue
SELECT
    dt.full_date,
    SUM(f.treatment_cost) AS daily_revenue,
    SUM(SUM(f.treatment_cost)) OVER (ORDER BY dt.full_date) AS running_total
FROM fact_patient_visit f
JOIN dim_date dt ON f.date_sk = dt.date_sk
GROUP BY dt.full_date;
