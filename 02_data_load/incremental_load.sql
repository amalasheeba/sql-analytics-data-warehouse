UPDATE dim_patient
SET effective_end = '2024-02-01',
    is_current = 'N'
WHERE patient_id = 'P001'
  AND is_current = 'Y';

INSERT INTO dim_patient
(patient_id, patient_name, gender, date_of_birth,
 effective_start, effective_end, is_current)
VALUES
('P001','Ravi K','M','1985-06-10','2024-02-01','9999-12-31','Y');
