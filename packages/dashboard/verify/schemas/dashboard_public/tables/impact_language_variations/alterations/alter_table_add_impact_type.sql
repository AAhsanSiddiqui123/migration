-- Verify schemas/dashboard_public/tables/impact_language_variations/alterations/alter_table_add_impact_type  on pg

BEGIN;

SELECT impact_type FROM dashboard_public.impact_language_variations LIMIT 1;

ROLLBACK;
