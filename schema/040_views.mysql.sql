-- Auto-generated from schema-views-mysql.yaml (map@sha1:B3C579FF17AC186C47D2C4AC86B0738DB2308BF2)
-- engine: mysql
-- table:  rate_limits

-- Contract view for [rate_limits]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_rate_limits AS
SELECT
  id,
  subject_type,
  subject_id,
  name,
  window_size_sec,
  limit_count,
  active,
  created_at
FROM rate_limits;
