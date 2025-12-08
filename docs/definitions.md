# rate_limits

Configured rate-limiting rules at the application level.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| active | BOOLEAN | NO | TRUE | Whether the rule is active. |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| limit_count |  | NO |  | Number of allowed operations within the window. |
| name |  | NO |  | Rule/bucket name. |
| subject_id |  | NO |  | Identifier of the subject. |
| subject_type | TEXT | NO |  | Entity type being limited. |
| window_size_sec | INTEGER | NO |  | Window length in seconds. |

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
| vw_rate_limits | mysql | algorithm=MERGE, security=INVOKER | [packages\rate-limits\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/rate-limits/schema/040_views.mysql.sql) |
| vw_rate_limits | postgres |  | [packages\rate-limits\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/rate-limits/schema/040_views.postgres.sql) |
