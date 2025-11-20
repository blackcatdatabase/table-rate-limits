<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – rate_limits

Configured rate-limiting rules at the application level.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| subject_type | TEXT | NO | — | Entity type being limited. |  |
| name | VARCHAR(120) | NO | — | Rule/bucket name. |  |
| limit_count | INTEGER | NO | — | Number of allowed operations within the window. |  |
| active | BOOLEAN | NO | TRUE | Whether the rule is active. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |