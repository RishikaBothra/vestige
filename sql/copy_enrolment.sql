-- /full/path/data/ should be replaced with the actual full path to the data directory on your system.

\copy raw.enrolment
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_enrolment/api_data_aadhar_enrolment_0_500000.csv'
CSV HEADER;

\copy raw.enrolment
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_enrolment/api_data_aadhar_enrolment_500000_1000000.csv'
CSV HEADER;

\copy raw.enrolment
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_enrolment/api_data_aadhar_enrolment_1000000_1006029.csv'
CSV HEADER;
