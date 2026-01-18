SET DateStyle = 'ISO, DMY';

CREATE SCHEMA IF NOT EXISTS raw;

CREATE TABLE raw.enrolment (
    date DATE NOT NULL,
    state TEXT NOT NULL,
    district TEXT NOT NULL,
    pincode TEXT NOT NULL,
    age_0_5 INTEGER NOT NULL CHECK (age_0_5 >= 0),
    age_5_17 INTEGER NOT NULL CHECK (age_5_17 >= 0),
    age_18_greater INTEGER NOT NULL CHECK (age_18_greater >= 0)
);

CREATE TABLE raw.demographic (
    date DATE NOT NULL,
    state TEXT NOT NULL,
    district TEXT NOT NULL,
    pincode TEXT NOT NULL,
    demo_age_5_17 INTEGER NOT NULL CHECK (demo_age_5_17 >= 0),
    demo_age_17_ INTEGER NOT NULL CHECK (demo_age_17_ >= 0)
);

CREATE TABLE raw.biometric (
    date DATE NOT NULL,
    state TEXT NOT NULL,
    district TEXT NOT NULL,
    pincode TEXT NOT NULL,
    bio_age_5_17 INTEGER NOT NULL CHECK (bio_age_5_17 >= 0),
    bio_age_17_ INTEGER NOT NULL CHECK (bio_age_17_ >= 0)
);

CREATE INDEX IF NOT EXISTS idx_enrolment_date_state_district
ON raw.enrolment (date, state, district);

CREATE INDEX IF NOT EXISTS idx_demographic_date_state_district
ON raw.demographic (date, state, district);

CREATE INDEX IF NOT EXISTS idx_biometric_date_state_district
ON raw.biometric (date, state, district);
