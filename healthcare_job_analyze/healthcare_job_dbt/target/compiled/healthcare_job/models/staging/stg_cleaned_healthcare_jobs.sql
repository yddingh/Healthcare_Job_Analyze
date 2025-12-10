

with parts as (

    

    
    select * from main."cleaned_healthcare_jobs_part_1"
     union all 
    
    select * from main."cleaned_healthcare_jobs_part_2"
    
    
)

select * from parts