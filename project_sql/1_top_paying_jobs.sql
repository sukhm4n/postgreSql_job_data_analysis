/*
Question: What are the top paying Data Analyst jobs?
- Identify the top 10 highest-paying data analyst roles that are available remotely.
- Focuses on job postings with specified salaries(remove nulls).
- Why? Highlight the top-paying opportunities for data analysts, offering insights to what are the most optimal skills and roles to be pursing as a data analyst.
*/

SELECT
    job_id,
    job_title,
    c.name,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
from job_postings_fact j
LEFT JOIN company_dim c ON c.company_id=j.company_id
where job_title = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;
