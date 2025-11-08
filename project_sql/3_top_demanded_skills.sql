/* 
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market, providing insights into the most valuable skills for job seekers.
*/

select skills,
count(sj.job_id) as demand
from job_postings_fact j
INNER JOIN skills_job_dim sj on sj.job_id=j.job_id
INNER JOIN skills_dim sd on sd.skill_id=sj.skill_id
where j.job_title_short = 'Data Analyst' AND
      j.job_work_from_home= True
GROUP BY skills
ORDER BY demand DESC
LIMIT 5
