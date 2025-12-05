-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  rate_limits

CREATE INDEX IF NOT EXISTS idx_rate_limits_active ON rate_limits (active);
