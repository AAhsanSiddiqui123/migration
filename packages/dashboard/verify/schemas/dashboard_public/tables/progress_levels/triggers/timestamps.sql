-- Verify schemas/dashboard_public/tables/progress_levels/triggers/timestamps  on pg

BEGIN;

SELECT created_at FROM dashboard_public.progress_levels LIMIT 1;
SELECT updated_at FROM dashboard_public.progress_levels LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_progress_levels_modtime');

ROLLBACK;
