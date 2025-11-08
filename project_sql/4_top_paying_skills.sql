/*
Question : What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and helps identify the most financially rewarding skills to acquire or improve
*/

select skills,
round(avg(j.salary_year_avg),0) as sal
from job_postings_fact j
INNER JOIN skills_job_dim sj on sj.job_id=j.job_id
INNER JOIN skills_dim sd on sd.skill_id=sj.skill_id
where j.job_title_short = 'Data Analyst'
      and j.salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY sal DESC
LIMIT 25