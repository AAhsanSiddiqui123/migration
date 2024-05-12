-- Verify schemas/dashboard_public/tables/impact_language_variations/alterations/alter_table_add_pure_image  on pg

BEGIN;

SELECT pure_image FROM dashboard_public.impact_language_variations LIMIT 1;

ROLLBACK;
