SELECT 
    job_id :: VARCHAR  || '-' || company_id :: VARCHAR AS company_id,
    job_posted_date :: DATE AS job_posted_date,
    salary_year_avg :: DECIMAL(10, 2) AS salary_year_avg,
    job_work_from_home :: INT AS job_work_from_home
FROM 
    job_postings_fact
WHERE
     salary_year_avg IS NOT NULL
LIMIT 10;