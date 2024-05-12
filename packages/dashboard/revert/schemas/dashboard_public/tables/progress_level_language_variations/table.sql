-- Revert schemas/dashboard_public/tables/progress_level_language_variations/table from pg

BEGIN;

DROP TABLE dashboard_public.progress_level_language_variations;

COMMIT;
