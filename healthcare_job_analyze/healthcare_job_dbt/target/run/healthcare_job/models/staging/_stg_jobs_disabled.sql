
    
    create view main."_stg_jobs_disabled" as
    -- models/staging/stg_jobs.sql


-- 说明：把外部加载进 DB 的清洗表（stg_jobs）作为 dbt 的 staging model。
-- 请确保在 models/schema.yml 中或 sources.yml 中将该表注册为 source/staging.stg_jobs
select
  *
from stg_jobs;