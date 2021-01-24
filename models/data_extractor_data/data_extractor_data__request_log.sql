-- cte common table expressions

with de_request_logs as (
    select * from {{ source('data_extractor_request_log', 'request_log') }}
),

final as (
    select * from de_request_logs
)

SELECT * FROM final