-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  rate_limits
-- Contract view for [rate_limits]
CREATE OR REPLACE VIEW vw_rate_limits AS
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
