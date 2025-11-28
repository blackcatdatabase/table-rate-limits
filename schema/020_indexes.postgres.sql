-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  rate_limits

CREATE INDEX IF NOT EXISTS idx_rate_limits_active ON rate_limits (active);
