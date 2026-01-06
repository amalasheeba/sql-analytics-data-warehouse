CREATE TABLE dim_patient (
    patient_pk       INT IDENTITY PRIMARY KEY,
    patient_id       VARCHAR(50),
    patient_name     VARCHAR(100),
    gender            CHAR(1),
    date_of_birth     DATE,
    effective_start   DATE,
    effective_end     DATE,
    is_current        CHAR(1)
);
