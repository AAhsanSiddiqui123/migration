-- Verify schemas/dashboard_public/tables/progress_level_language_variations/indexes/progress_level_language_variations_progress_level_id_idx  on pg

BEGIN;

SELECT verify_index ('dashboard_public.progress_level_language_variations', 'progress_level_language_variations_progress_level_id_idx');

ROLLBACK;
