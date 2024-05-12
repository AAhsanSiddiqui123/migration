-- Verify schemas/dashboard_public/tables/progress_levels/triggers/peoplestamps  on pg

BEGIN;

SELECT created_by FROM dashboard_public.progress_levels LIMIT 1;
SELECT updated_by FROM dashboard_public.progress_levels LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_progress_levels_moduser');

ROLLBACK;
