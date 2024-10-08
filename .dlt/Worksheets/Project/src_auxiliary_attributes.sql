WITH stg_job_ads AS (
    SELECT * FROM {{ source('job_ads', 'stg_project_leader_job_ads') }}
)
SELECT
    id,
    EMPLOYER__NAME as employer_name,
    experience_required,
    driving_license_required AS driving_license,
    access_to_own_car
FROM stg_job_ads