-- Verify schemas/dashboard_public/tables/progress_levels/table on pg

BEGIN;

SELECT verify_table ('dashboard_public.progress_levels');

ROLLBACK;
