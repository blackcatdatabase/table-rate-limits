-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
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
