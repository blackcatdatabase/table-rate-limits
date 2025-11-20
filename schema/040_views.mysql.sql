-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
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
