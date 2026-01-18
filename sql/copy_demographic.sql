-- /full/path/data/ should be replaced with the actual full path to the data directory on your system.

\copy raw.demographic
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_demographic/api_data_aadhar_demographic_0_500000.csv'
CSV HEADER;

\copy raw.demographic
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_demographic/api_data_aadhar_demographic_500000_1000000.csv'
CSV HEADER;

\copy raw.demographic
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_demographic/api_data_aadhar_demographic_1000000_1500000.csv'
CSV HEADER;

\copy raw.demographic
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_demographic/api_data_aadhar_demographic_1500000_2000000.csv'
CSV HEADER;

\copy raw.demographic
FROM '/home/rishika/projects/vestige/sql/data/api_data_aadhar_demographic/api_data_aadhar_demographic_2000000_2071700.csv'
CSV HEADER;
