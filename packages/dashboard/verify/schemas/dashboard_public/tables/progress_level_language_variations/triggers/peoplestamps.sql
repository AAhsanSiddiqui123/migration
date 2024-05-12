-- Verify schemas/dashboard_public/tables/progress_level_language_variations/triggers/peoplestamps  on pg

BEGIN;

SELECT created_by FROM dashboard_public.progress_level_language_variations LIMIT 1;
SELECT updated_by FROM dashboard_public.progress_level_language_variations LIMIT 1;

ROLLBACK;
