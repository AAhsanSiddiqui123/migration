-- Revert schemas/dashboard_public/tables/progress_level_language_variations/indexes/progress_level_language_variations_progress_level_id_idx from pg

BEGIN;

DROP INDEX dashboard_public.progress_level_language_variations_progress_level_id_idx;

COMMIT;
