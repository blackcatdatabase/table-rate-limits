# rate_limits

Configured rate-limiting rules at the application level.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |  |
| subject_type | mysql: ENUM('ip','user','api_key','tenant') / postgres: TEXT | NO |  | Entity type being limited. |  |
| subject_id | mysql: VARCHAR(128) | NO |  | Identifier of the subject. |  |
| name | mysql: VARCHAR(120) | NO |  | Rule/bucket name. |  |
| window_size_sec | mysql: INT / postgres: INTEGER | NO |  | Window length in seconds. |  |
| limit_count | mysql: INT | NO |  | Number of allowed operations within the window. |  |
| active | BOOLEAN | NO | TRUE | Whether the rule is active. |  |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_rate_limits | subject_type, subject_id, name, window_size_sec |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_rate_limits_active | active | INDEX idx_rate_limits_active (active) |
| uq_rate_limits | subject_type,subject_id,name,window_size_sec | UNIQUE KEY uq_rate_limits (subject_type, subject_id, name, window_size_sec) |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_rate_limits | subject_type, subject_id, name, window_size_sec |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_rate_limits_active | active | CREATE INDEX IF NOT EXISTS idx_rate_limits_active ON rate_limits (active) |
| uq_rate_limits | subject_type,subject_id,name,window_size_sec | CONSTRAINT uq_rate_limits UNIQUE (subject_type, subject_id, name, window_size_sec) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_rate_limits | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_rate_limits | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
