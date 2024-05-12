-- Revert schemas/dashboard_public/tables/progress_level_language_variations/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_language_variations DROP COLUMN created_at;
ALTER TABLE dashboard_public.progress_level_language_variations DROP COLUMN updated_at;
DROP TRIGGER timestamps_tg ON dashboard_public.progress_level_language_variations;

COMMIT;
