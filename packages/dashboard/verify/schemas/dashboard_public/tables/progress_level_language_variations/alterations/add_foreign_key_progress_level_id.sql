-- Verify schemas/dashboard_public/tables/progress_level_language_variations/alterations/add_foreign_key_progress_level_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.progress_level_language_variations', 'fk_progress_level_language_variations_progress_level_id');

ROLLBACK;
