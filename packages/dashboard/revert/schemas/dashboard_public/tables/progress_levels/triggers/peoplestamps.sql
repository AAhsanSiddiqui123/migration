-- Revert schemas/dashboard_public/tables/progress_levels/triggers/peoplestamps from pg

BEGIN;

ALTER TABLE dashboard_public.progress_levels DROP COLUMN created_by;
ALTER TABLE dashboard_public.progress_levels DROP COLUMN updated_by;
DROP TRIGGER update_dashboard_public_progress_levels_moduser ON dashboard_public.progress_levels;

COMMIT;
