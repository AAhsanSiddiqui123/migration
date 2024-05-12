-- Verify schemas/dashboard_public/tables/impact_language_variations/alterations/alter_table_add_sub_header  on pg

BEGIN;

SELECT sub_header FROM dashboard_public.impact_language_variations LIMIT 1;

ROLLBACK;
