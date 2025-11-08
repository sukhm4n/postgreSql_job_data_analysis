/*
Question: what are the skills required for tpp paying data analyst jobs?
- Use the top 10 highest paying data analyst jobs from first query
- add the specific skills required for these roles
- Why? it gives us a detailed look at which hight paying jobs demand certain skills,
  helping job seekers understand which skills to develop that align with top salaries
*/


with cte as (
SELECT
    j.job_id,
    job_title,
    c.name,
    salary_year_avg
from job_postings_fact j
LEFT JOIN company_dim c ON c.company_id=j.company_id
where job_title = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10
)

select cte.*,
    sd.skills
from cte
inner JOIN skills_job_dim sj on sj.job_id=cte.job_id
inner JOIN skills_dim sd on sd.skill_id=sj.skill_id
ORDER BY salary_year_avg DESC
