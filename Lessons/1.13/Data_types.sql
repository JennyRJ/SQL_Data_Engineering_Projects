SELECT * 
FROM job_postings_fact
LIMIT 10;

SELECT 
CAST(job_id AS VARCHAR) || '-' || CAST(company_id AS VARCHAR) AS company_id,

CAST(job_work_from_home AS INT)AS job_work_from_home, --convert into an integer
CAST(job_posted_date AS date) AS job_posted_date,--convert to date alone
CAST(salary_year_avg AS DECIMAL (10, 0)) AS salary_year_avg 

FROM job_postings_fact
WHERE salary_year_avg IS NOT NULL

LIMIT 10;

SELECT 
job_id :: VARCHAR || '-' || company_id :: VARCHAR AS company_id,
job_work_from_home :: INT AS job_work_from_home, --convert into an integer
job_posted_date :: date AS job_posted_date,--convert to date alone
salary_year_avg :: DECIMAL (10, 0) AS salary_year_avg 

FROM job_postings_fact
WHERE salary_year_avg IS NOT NULL

LIMIT 10;
