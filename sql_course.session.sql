CREATE TABLE job_applied (
    job_id INT, 
    application_sent_date DATE, 
    custom_resume BOOLEAN, 
    resume_file_name VARCHAR(255), 
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255), 
    status VARCHAR(50)
);


INSERT INTO job_applied (
    job_id, 
    application_sent_date, 
    custom_resume, 
    resume_file_name, 
    cover_letter_sent, 
    cover_letter_file_name, 
    status
) VALUES
(101, '2025-01-10', TRUE,  'resume_google.pdf',  TRUE,  'cover_google.pdf',  'Under Review'),
(102, '2025-02-05', FALSE, 'resume_amazon.pdf',  FALSE, NULL,               'Application Sent'),
(103, '2025-03-12', TRUE,  'resume_meta.pdf',    TRUE,  'cover_meta.pdf',   'Interview Scheduled'),
(104, '2025-04-01', FALSE, 'resume_tesla.pdf',   FALSE, NULL,               'Rejected'),
(105, '2025-05-20', TRUE,  'resume_openai.pdf',  TRUE,  'cover_openai.pdf', 'Offer Received');


SELECT * FROM job_applied;


ALTER TABLE job_applied
add contact VARCHAR(50);

ALTER TABLE job_applied
rename column contact to contact_name;

drop TABLE job_applied;

create table january_jobs application_sent_date



