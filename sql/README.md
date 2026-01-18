Database: PostgreSQL

1. Download the zip files from the links below and extract them into a directory named `data` inside the `sql` folder.
    For example, the structure should look like `sql/data/api_data_aadhar_enrolment/` after extraction.
    - Aadhar Enrolment Data - [rl.adistrim.in/7Dc5zi](https://rl.adistrim.in/7Dc5zi)
2. Update the file paths in the SQL copy commands in `sql/copy_enrolment.sql` to point to the correct location of the extracted CSV files on your system.
3. Run the SQL scripts to load the data into your database - I used psql to execute the scripts.
