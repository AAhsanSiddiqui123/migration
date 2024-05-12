-- Revert schemas/dashboard_public/tables/progress_level_language_variations/triggers/peoplestamps from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_language_variations DROP COLUMN created_by;
ALTER TABLE dashboard_public.progress_level_language_variations DROP COLUMN updated_by;
DROP TRIGGER peoplestamps_tg ON dashboard_public.progress_level_language_variations;

COMMIT;
