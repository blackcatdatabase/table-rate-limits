-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  rate_limits

CREATE INDEX IF NOT EXISTS idx_rate_limits_active ON rate_limits (active);
