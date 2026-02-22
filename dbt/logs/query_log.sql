-- created_at: 2026-02-22T22:51:39.792272+00:00
-- finished_at: 2026-02-22T22:51:39.904847+00:00
-- elapsed: 112ms
-- outcome: success
-- dialect: snowflake
-- node_id: operation.airbnb.airbnb-on_run_start-0
-- query_id: 01c2979b-0004-9a4e-000b-a38a000203e2
-- desc: execute adapter call
CREATE TABLE IF NOT EXISTS DEV.audit_log ( model_name STRING, run_timestamp TIMESTAMP )
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-02-22T22:51:40.265396+00:00
-- finished_at: 2026-02-22T22:51:40.398592+00:00
-- elapsed: 133ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: not available
-- desc: dbt run query
select * from (select * from (
WITH raw_hosts AS (
    SELECT
        *
    FROM
       AIRBNB.raw.raw_hosts
)
SELECT * FROM RAW_HOSTS
) as __preview_sbq__ limit 1000
) limit 10;
