-- models/staging/stg_jobs_staging.sql
{{ config(materialized='table') }}
select *
from stg_jobs
