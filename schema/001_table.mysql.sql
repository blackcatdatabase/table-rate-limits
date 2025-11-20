-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  rate_limits
CREATE TABLE IF NOT EXISTS rate_limits (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  subject_type ENUM('ip','user','api_key','tenant') NOT NULL,
  subject_id VARCHAR(128) NOT NULL,
  name VARCHAR(120) NOT NULL,
  window_size_sec INT NOT NULL,
  limit_count INT NOT NULL,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  UNIQUE KEY uq_rate_limits (subject_type, subject_id, name, window_size_sec),
  INDEX idx_rate_limits_active (active)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
