--Index on Business Keys (Dimensions)
CREATE INDEX idx_dim_patient_business
ON dim_patient(patient_id, is_current);

CREATE INDEX idx_dim_doctor_business
ON dim_doctor(doctor_id);

CREATE INDEX idx_dim_hospital_business
ON dim_hospital(hospital_id);

--Index on Fact Table Foreign Keys
CREATE INDEX idx_fact_patient_pk
ON fact_patient_visit(patient_pk);

CREATE INDEX idx_fact_doctor_pk
ON fact_patient_visit(doctor_pk);

CREATE INDEX idx_fact_hospital_pk
ON fact_patient_visit(hospital_pk);

CREATE INDEX idx_fact_date_pk
ON fact_patient_visit(date_pk);
