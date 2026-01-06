INSERT INTO dim_date VALUES
(20240101,'2024-01-01',2024,1,1,1,'Monday'),
(20240102,'2024-01-02',2024,1,1,2,'Tuesday'),
(20240103,'2024-01-03',2024,1,1,3,'Wednesday');

INSERT INTO dim_hospital (hospital_id, hospital_name, city, state)
VALUES
('H001','City Care Hospital','Bangalore','KA'),
('H002','Apollo Hospital','Chennai','TN');


INSERT INTO dim_doctor (doctor_id, doctor_name, specialization)
VALUES
('D001','Dr. Sharma','Cardiology'),
('D002','Dr. Iyer','Orthopedics');


INSERT INTO dim_patient
(patient_id, patient_name, gender, date_of_birth,
 effective_start, effective_end, is_current)
VALUES
('P001','Ravi Kumar','M','1985-06-10','2024-01-01','9999-12-31','Y'),
('P002','Anita Singh','F','1990-09-15','2024-01-01','9999-12-31','Y');

INSERT INTO fact_patient_visit
(visit_id, patient_pk, doctor_pk, hospital_pk, date_pk, diagnosis, treatment_cost)
SELECT
'V001',
p.patient_pk,
d.doctor_pk,
h.hospital_pk,
20240101,
'Heart Checkup',
1500.00
FROM dim_patient p, dim_doctor d, dim_hospital h
WHERE p.patient_id='P001'
  AND d.doctor_id='D001'
  AND h.hospital_id='H001';

