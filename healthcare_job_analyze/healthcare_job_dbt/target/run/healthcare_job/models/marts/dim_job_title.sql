
  
    
    
    create  table main."dim_job_title"
    as
        

with titles as (
    select distinct job_title
    from main.stg_jobs
    where job_title is not null and job_title != ''
)

select
    row_number() over (order by job_title) as job_title_id,
    job_title
from titles
order by job_title

  