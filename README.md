# Data Analyst Job Market Insights

This project explores the landscape of **Data Analyst** roles using SQL-based data analysis. It identifies the **highest-paying remote jobs**, **most in-demand skills**, and **top-paying skill sets** — offering a clear roadmap for professionals seeking to advance in data analytics.

---

## 📁 Project Structure

| File | Description |
|------|--------------|
| `1_top_paying_jobs.sql` | Retrieves the 10 highest-paying remote Data Analyst roles with company details and salary insights. |
| `2_top_paying_skills.sql` | Joins top-paying jobs with skill data to reveal which capabilities are driving higher salaries. |
| `3_top_demanded_skills.sql` | Identifies the top 5 most sought-after Data Analyst skills in the job market. |
| `4_top_paying_skills.sql` | Calculates average salaries associated with each skill to find the most lucrative ones. |
| `5_optimal_skills.sql` | Combines skill demand and salary data to pinpoint skills that are both highly paid and highly sought after. |

---

## 🎯 Objectives

1. **Find High-Paying Roles**  
   Identify which remote Data Analyst positions offer the highest average salaries.

2. **Map Skills to Pay Levels**  
   Analyze which technical skills (SQL, Python, Tableau, etc.) are most valued among top-paying roles.

3. **Quantify Skill Demand**  
   Determine which tools and programming languages appear most often in Data Analyst job postings.

4. **Optimize Career Growth**  
   Combine salary and demand data to reveal which skills offer both financial rewards and job security.

---

## 🧠 Data Sources

The analysis uses structured tables to model job posting 

- `job_postings_fact`: Core dataset with job postings, salaries, and job type details.  
- `company_dim`: Company lookup table for employer names.  
- `skills_dim`: Master list of distinct skills.  
- `skills_job_dim`: Bridge table linking jobs and skills.

---

## 🧩 SQL Highlights

### 1. Top Remote Data Analyst Jobs
Extracts the best-paying remote jobs:

### 2. Skills for Top-Paying Roles
Shows which skills appear in high-paying opportunities using a common table expression (CTE).

### 3. In-Demand Skills
Counts how often each skill appears in remote Data Analyst postings to find the top 5.

### 4. Salary by Skill
Computes the average salary for each skill across all Data Analyst listings.

### 5. Optimal Skills
Merges demand and salary data to rank the most strategic skills to learn.

---

## 📊 Insights Delivered

- **Top Remote Roles**  
  Which companies and positions pay the most for Data Analyst work-from-home roles.  

- **High-Value Skills**  
  Skills such as Python, SQL, and Tableau frequently appear in both top-paying and in-demand lists.  

- **Career Strategy Guide**  
  What to learn next — a balance of skills that attract strong salaries and frequent demand.

---

## 🛠️ Tools and Technologies

- **SQL / PostgreSQL** – Querying and data manipulation  
- **CTEs & Joins** – For multi-level relational insights  
- **Data Aggregation** – With AVG and COUNT functions  
- **Analytical Sorting** – To reveal top insights by pay and demand  

---

## 💡 Key Takeaways

- The **best-paying Data Analyst jobs** emphasize mastery in SQL, Python, and business intelligence tools.  
- **High-demand skills** overlap with **high-salary skills**, reinforcing their value.  
- This approach demonstrates how **SQL analytics** can drive career decisions through data-driven insights.

---

### 🤝 Contributions

Contributions, ideas, and enhancements are welcome — feel free to open an issue or pull request!

---

