-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  rate_limits

CREATE INDEX IF NOT EXISTS idx_rate_limits_active ON rate_limits (active);
