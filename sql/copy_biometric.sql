-- /full/path/data/ should be replaced with the actual full path to the data directory on your system.

\copy raw.biometric
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_biometric/api_data_aadhar_biometric_0_500000.csv'
CSV HEADER;

\copy raw.biometric
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_biometric/api_data_aadhar_biometric_500000_1000000.csv'
CSV HEADER;

\copy raw.biometric
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_biometric/api_data_aadhar_biometric_1000000_1500000.csv'
CSV HEADER;

\copy raw.biometric
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_biometric/api_data_aadhar_biometric_1500000_1861108.csv'
CSV HEADER;
