-- Revert schemas/dashboard_public/tables/progress_levels/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.progress_levels DROP COLUMN created_at;
ALTER TABLE dashboard_public.progress_levels DROP COLUMN updated_at;
DROP TRIGGER update_dashboard_public_progress_levels_modtime ON dashboard_public.progress_levels;

COMMIT;
