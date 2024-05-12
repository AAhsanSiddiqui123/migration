-- Verify schemas/dashboard_public/tables/progress_level_language_variations/table on pg

BEGIN;

SELECT verify_table ('dashboard_public.progress_level_language_variations');

ROLLBACK;
