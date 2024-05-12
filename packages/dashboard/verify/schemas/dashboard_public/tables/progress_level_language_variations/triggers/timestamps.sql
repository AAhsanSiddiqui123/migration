-- Verify schemas/dashboard_public/tables/progress_level_language_variations/triggers/timestamps  on pg

BEGIN;

SELECT created_at FROM dashboard_public.progress_level_language_variations LIMIT 1;
SELECT updated_at FROM dashboard_public.progress_level_language_variations LIMIT 1;

ROLLBACK;
