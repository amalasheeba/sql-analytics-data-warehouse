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

CREATE TABLE dim_doctor (
    doctor_pk    INT IDENTITY PRIMARY KEY,
    doctor_id    VARCHAR(50),
    doctor_name  VARCHAR(100),
    specialization VARCHAR(100)
);

CREATE TABLE dim_hospital (
    hospital_pk  INT IDENTITY PRIMARY KEY,
    hospital_id  VARCHAR(50),
    hospital_name VARCHAR(100),
    city         VARCHAR(50),
    state        VARCHAR(50)
);

CREATE TABLE dim_date (
    date_pk       INT PRIMARY KEY,
    full_date     DATE,
    year          INT,
    quarter       INT,
    month         INT,
    day           INT,
    weekday       VARCHAR(10)
);

CREATE TABLE fact_patient_visit (
    visit_id      VARCHAR(50),
    patient_pk    INT,
    doctor_pk     INT,
    hospital_pk   INT,
    date_pk       INT,
    diagnosis     VARCHAR(200),
    treatment_cost DECIMAL(10,2),

    CONSTRAINT fk_patient FOREIGN KEY (patient_pk) REFERENCES dim_patient(patient_pk),
    CONSTRAINT fk_doctor FOREIGN KEY (doctor_pk) REFERENCES dim_doctor(doctor_pk),
    CONSTRAINT fk_hospital FOREIGN KEY (hospital_pk) REFERENCES dim_hospital(hospital_pk),
    CONSTRAINT fk_date FOREIGN KEY (date_pk) REFERENCES dim_date(date_pk)
);


